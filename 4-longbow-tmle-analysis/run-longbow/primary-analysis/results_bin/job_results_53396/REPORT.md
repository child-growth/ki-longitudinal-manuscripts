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

**Intervention Variable:** enstunt

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        enstunt    stunted   n_cell       n
----------  -------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                0      187     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                1        0     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                0        0     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                1       44     231
Birth       ki0047075b-MAL-ED          BRAZIL                         0                0       56      65
Birth       ki0047075b-MAL-ED          BRAZIL                         0                1        0      65
Birth       ki0047075b-MAL-ED          BRAZIL                         1                0        0      65
Birth       ki0047075b-MAL-ED          BRAZIL                         1                1        9      65
Birth       ki0047075b-MAL-ED          INDIA                          0                0       37      47
Birth       ki0047075b-MAL-ED          INDIA                          0                1        0      47
Birth       ki0047075b-MAL-ED          INDIA                          1                0        0      47
Birth       ki0047075b-MAL-ED          INDIA                          1                1       10      47
Birth       ki0047075b-MAL-ED          NEPAL                          0                0       25      27
Birth       ki0047075b-MAL-ED          NEPAL                          0                1        0      27
Birth       ki0047075b-MAL-ED          NEPAL                          1                0        0      27
Birth       ki0047075b-MAL-ED          NEPAL                          1                1        2      27
Birth       ki0047075b-MAL-ED          PERU                           0                0      207     233
Birth       ki0047075b-MAL-ED          PERU                           0                1        0     233
Birth       ki0047075b-MAL-ED          PERU                           1                0        0     233
Birth       ki0047075b-MAL-ED          PERU                           1                1       26     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      113     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        0     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                0        0     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                1       10     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      102     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        0     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        0     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1       23     125
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0       75      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0        0      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1       17      92
Birth       ki1000108-IRC              INDIA                          0                0      343     388
Birth       ki1000108-IRC              INDIA                          0                1        0     388
Birth       ki1000108-IRC              INDIA                          1                0        0     388
Birth       ki1000108-IRC              INDIA                          1                1       45     388
Birth       ki1000109-EE               PAKISTAN                       0                0      140     240
Birth       ki1000109-EE               PAKISTAN                       0                1        0     240
Birth       ki1000109-EE               PAKISTAN                       1                0        0     240
Birth       ki1000109-EE               PAKISTAN                       1                1      100     240
Birth       ki1000109-ResPak           PAKISTAN                       0                0       28      42
Birth       ki1000109-ResPak           PAKISTAN                       0                1        0      42
Birth       ki1000109-ResPak           PAKISTAN                       1                0        0      42
Birth       ki1000109-ResPak           PAKISTAN                       1                1       14      42
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                0      903    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                1        0    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                0        0    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                1      349    1252
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                0      511     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                1        0     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                0        0     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                1       97     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                0      491     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                1        0     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                0        0     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                1       48     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0      631     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0        0     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1      101     732
Birth       ki1101329-Keneba           GAMBIA                         0                0     1460    1543
Birth       ki1101329-Keneba           GAMBIA                         0                1        0    1543
Birth       ki1101329-Keneba           GAMBIA                         1                0        0    1543
Birth       ki1101329-Keneba           GAMBIA                         1                1       83    1543
Birth       ki1113344-GMS-Nepal        NEPAL                          0                0      574     696
Birth       ki1113344-GMS-Nepal        NEPAL                          0                1        0     696
Birth       ki1113344-GMS-Nepal        NEPAL                          1                0        0     696
Birth       ki1113344-GMS-Nepal        NEPAL                          1                1      122     696
Birth       ki1114097-CMIN             BANGLADESH                     0                0       17      26
Birth       ki1114097-CMIN             BANGLADESH                     0                1        0      26
Birth       ki1114097-CMIN             BANGLADESH                     1                0        0      26
Birth       ki1114097-CMIN             BANGLADESH                     1                1        9      26
Birth       ki1114097-CONTENT          PERU                           0                0        2       2
Birth       ki1114097-CONTENT          PERU                           0                1        0       2
Birth       ki1114097-CONTENT          PERU                           1                0        0       2
Birth       ki1114097-CONTENT          PERU                           1                1        0       2
Birth       ki1119695-PROBIT           BELARUS                        0                0    13857   13890
Birth       ki1119695-PROBIT           BELARUS                        0                1        0   13890
Birth       ki1119695-PROBIT           BELARUS                        1                0        0   13890
Birth       ki1119695-PROBIT           BELARUS                        1                1       33   13890
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                0    12441   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                1        0   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                0        0   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                1     1434   13875
Birth       ki1135781-COHORTS          GUATEMALA                      0                0      802     852
Birth       ki1135781-COHORTS          GUATEMALA                      0                1        0     852
Birth       ki1135781-COHORTS          GUATEMALA                      1                0        0     852
Birth       ki1135781-COHORTS          GUATEMALA                      1                1       50     852
Birth       ki1135781-COHORTS          INDIA                          0                0     5848    6640
Birth       ki1135781-COHORTS          INDIA                          0                1        0    6640
Birth       ki1135781-COHORTS          INDIA                          1                0        0    6640
Birth       ki1135781-COHORTS          INDIA                          1                1      792    6640
Birth       ki1135781-COHORTS          PHILIPPINES                    0                0     2863    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    0                1        0    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    1                0        0    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    1                1      187    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0    15068   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1        0   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0        0   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1     7387   22455
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0     1966    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1        0    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0        0    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1      857    2823
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                0      180     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                1       22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0       17     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1       22     241
6 months    ki0047075b-MAL-ED          BRAZIL                         0                0      180     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                1        4     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                0       23     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        2     209
6 months    ki0047075b-MAL-ED          INDIA                          0                0      169     236
6 months    ki0047075b-MAL-ED          INDIA                          0                1       29     236
6 months    ki0047075b-MAL-ED          INDIA                          1                0       22     236
6 months    ki0047075b-MAL-ED          INDIA                          1                1       16     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                0      206     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                1        2     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                0       18     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                1       10     236
6 months    ki0047075b-MAL-ED          PERU                           0                0      200     273
6 months    ki0047075b-MAL-ED          PERU                           0                1       39     273
6 months    ki0047075b-MAL-ED          PERU                           1                0       13     273
6 months    ki0047075b-MAL-ED          PERU                           1                1       21     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      187     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       40     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       17     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1       10     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      174     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       34     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       14     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1       25     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0      226     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                1       68     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0       32     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1       43     369
6 months    ki1000108-IRC              INDIA                          0                0      285     407
6 months    ki1000108-IRC              INDIA                          0                1       73     407
6 months    ki1000108-IRC              INDIA                          1                0       22     407
6 months    ki1000108-IRC              INDIA                          1                1       27     407
6 months    ki1000109-EE               PAKISTAN                       0                0      152     373
6 months    ki1000109-EE               PAKISTAN                       0                1       57     373
6 months    ki1000109-EE               PAKISTAN                       1                0       38     373
6 months    ki1000109-EE               PAKISTAN                       1                1      126     373
6 months    ki1000109-ResPak           PAKISTAN                       0                0      118     239
6 months    ki1000109-ResPak           PAKISTAN                       0                1       55     239
6 months    ki1000109-ResPak           PAKISTAN                       1                0       35     239
6 months    ki1000109-ResPak           PAKISTAN                       1                1       31     239
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                0      819    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                1      153    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                0      137    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                1      227    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                0      201     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                1       31     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0       16     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1      132     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                0      365     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                1       87     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                0       28     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                1       57     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0      478     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1       65     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0       30     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1       31     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0      517     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1       96     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0       48     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1       54     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     1754    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1      136    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0       78    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       61    2029
6 months    ki1101329-Keneba           GAMBIA                         0                0     1685    2089
6 months    ki1101329-Keneba           GAMBIA                         0                1      207    2089
6 months    ki1101329-Keneba           GAMBIA                         1                0      109    2089
6 months    ki1101329-Keneba           GAMBIA                         1                1       88    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                0      202     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                1       26     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                0        7     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                1       64     299
6 months    ki1113344-GMS-Nepal        NEPAL                          0                0      402     564
6 months    ki1113344-GMS-Nepal        NEPAL                          0                1       71     564
6 months    ki1113344-GMS-Nepal        NEPAL                          1                0       40     564
6 months    ki1113344-GMS-Nepal        NEPAL                          1                1       51     564
6 months    ki1114097-CMIN             BANGLADESH                     0                0      123     243
6 months    ki1114097-CMIN             BANGLADESH                     0                1       28     243
6 months    ki1114097-CMIN             BANGLADESH                     1                0       27     243
6 months    ki1114097-CMIN             BANGLADESH                     1                1       65     243
6 months    ki1114097-CONTENT          PERU                           0                0      185     215
6 months    ki1114097-CONTENT          PERU                           0                1       12     215
6 months    ki1114097-CONTENT          PERU                           1                0       11     215
6 months    ki1114097-CONTENT          PERU                           1                1        7     215
6 months    ki1119695-PROBIT           BELARUS                        0                0    14691   15761
6 months    ki1119695-PROBIT           BELARUS                        0                1      941   15761
6 months    ki1119695-PROBIT           BELARUS                        1                0       82   15761
6 months    ki1119695-PROBIT           BELARUS                        1                1       47   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                0     6733    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                1     1062    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0      524    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1      350    8669
6 months    ki1135781-COHORTS          GUATEMALA                      0                0      551     961
6 months    ki1135781-COHORTS          GUATEMALA                      0                1      258     961
6 months    ki1135781-COHORTS          GUATEMALA                      1                0       16     961
6 months    ki1135781-COHORTS          GUATEMALA                      1                1      136     961
6 months    ki1135781-COHORTS          INDIA                          0                0     5269    6860
6 months    ki1135781-COHORTS          INDIA                          0                1      779    6860
6 months    ki1135781-COHORTS          INDIA                          1                0      319    6860
6 months    ki1135781-COHORTS          INDIA                          1                1      493    6860
6 months    ki1135781-COHORTS          PHILIPPINES                    0                0     2082    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    0                1      470    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    1                0       54    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    1                1      102    2708
6 months    ki1148112-LCNI-5           MALAWI                         0                0      530     839
6 months    ki1148112-LCNI-5           MALAWI                         0                1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         1                0        0     839
6 months    ki1148112-LCNI-5           MALAWI                         1                1      309     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0    10285   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1     1422   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0     2300   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1     2804   16811
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0     3064    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1      411    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0      546    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1      810    4831
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                0      103     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                1       76     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0        8     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1       25     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0                0      144     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                1        6     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                0       18     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          0                0      118     227
24 months   ki0047075b-MAL-ED          INDIA                          0                1       73     227
24 months   ki0047075b-MAL-ED          INDIA                          1                0       12     227
24 months   ki0047075b-MAL-ED          INDIA                          1                1       24     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                0      165     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                1       36     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                0       13     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                1       14     228
24 months   ki0047075b-MAL-ED          PERU                           0                0      117     201
24 months   ki0047075b-MAL-ED          PERU                           0                1       57     201
24 months   ki0047075b-MAL-ED          PERU                           1                0       10     201
24 months   ki0047075b-MAL-ED          PERU                           1                1       17     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      139     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       75     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       15     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        9     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       57     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1      124     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        2     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1       31     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0       89     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1      205     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       16     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1       61     371
24 months   ki1000108-IRC              INDIA                          0                0      217     409
24 months   ki1000108-IRC              INDIA                          0                1      141     409
24 months   ki1000108-IRC              INDIA                          1                0       20     409
24 months   ki1000108-IRC              INDIA                          1                1       31     409
24 months   ki1000109-EE               PAKISTAN                       0                0       38     167
24 months   ki1000109-EE               PAKISTAN                       0                1       62     167
24 months   ki1000109-EE               PAKISTAN                       1                0       11     167
24 months   ki1000109-EE               PAKISTAN                       1                1       56     167
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                0      172     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                1      183     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0       13     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1       61     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0      361     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1      157     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0       27     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       33     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0      346     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1       98     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0       36     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1       34     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6
24 months   ki1101329-Keneba           GAMBIA                         0                0     1080    1725
24 months   ki1101329-Keneba           GAMBIA                         0                1      469    1725
24 months   ki1101329-Keneba           GAMBIA                         1                0       64    1725
24 months   ki1101329-Keneba           GAMBIA                         1                1      112    1725
24 months   ki1113344-GMS-Nepal        NEPAL                          0                0      240     488
24 months   ki1113344-GMS-Nepal        NEPAL                          0                1      166     488
24 months   ki1113344-GMS-Nepal        NEPAL                          1                0       29     488
24 months   ki1113344-GMS-Nepal        NEPAL                          1                1       53     488
24 months   ki1114097-CMIN             BANGLADESH                     0                0       61     242
24 months   ki1114097-CMIN             BANGLADESH                     0                1       92     242
24 months   ki1114097-CMIN             BANGLADESH                     1                0       16     242
24 months   ki1114097-CMIN             BANGLADESH                     1                1       73     242
24 months   ki1114097-CONTENT          PERU                           0                0      133     164
24 months   ki1114097-CONTENT          PERU                           0                1       14     164
24 months   ki1114097-CONTENT          PERU                           1                0       10     164
24 months   ki1114097-CONTENT          PERU                           1                1        7     164
24 months   ki1119695-PROBIT           BELARUS                        0                0     3684    4035
24 months   ki1119695-PROBIT           BELARUS                        0                1      340    4035
24 months   ki1119695-PROBIT           BELARUS                        1                0        7    4035
24 months   ki1119695-PROBIT           BELARUS                        1                1        4    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0      968    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1      438    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0      103    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1      131    1640
24 months   ki1135781-COHORTS          GUATEMALA                      0                0      193    1070
24 months   ki1135781-COHORTS          GUATEMALA                      0                1      547    1070
24 months   ki1135781-COHORTS          GUATEMALA                      1                0        9    1070
24 months   ki1135781-COHORTS          GUATEMALA                      1                1      321    1070
24 months   ki1135781-COHORTS          INDIA                          0                0     2348    5337
24 months   ki1135781-COHORTS          INDIA                          0                1     2348    5337
24 months   ki1135781-COHORTS          INDIA                          1                0      133    5337
24 months   ki1135781-COHORTS          INDIA                          1                1      508    5337
24 months   ki1135781-COHORTS          PHILIPPINES                    0                0      908    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    0                1     1402    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    1                0       14    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    1                1      121    2445
24 months   ki1148112-LCNI-5           MALAWI                         0                0      273     579
24 months   ki1148112-LCNI-5           MALAWI                         0                1      104     579
24 months   ki1148112-LCNI-5           MALAWI                         1                0       48     579
24 months   ki1148112-LCNI-5           MALAWI                         1                1      154     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0     3627    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1     2315    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0      766    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1     1924    8632
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0     2378    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1     1018    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0      469    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1      887    4752


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
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

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
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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
![](/tmp/c5056f7f-bcb7-4113-bd96-69f712e8e471/e3837ed9-366c-4307-87e9-b0ed9134c684/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c5056f7f-bcb7-4113-bd96-69f712e8e471/e3837ed9-366c-4307-87e9-b0ed9134c684/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c5056f7f-bcb7-4113-bd96-69f712e8e471/e3837ed9-366c-4307-87e9-b0ed9134c684/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c5056f7f-bcb7-4113-bd96-69f712e8e471/e3837ed9-366c-4307-87e9-b0ed9134c684/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1066612   0.0640931   0.1492293
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.5973484   0.4361981   0.7584986
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.1471341   0.0975294   0.1967388
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.4136045   0.2488283   0.5783807
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.1643681   0.1174548   0.2112813
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.6304484   0.4609684   0.7999284
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1773221   0.1275154   0.2271288
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3762929   0.1902810   0.5623048
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1626775   0.1123971   0.2129579
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6605183   0.4984544   0.8225823
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2321349   0.1835631   0.2807067
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5684924   0.4515752   0.6854096
6 months    ki1000108-IRC              INDIA                          0                    NA                0.2055277   0.1634940   0.2475614
6 months    ki1000108-IRC              INDIA                          1                    NA                0.4852217   0.3440207   0.6264227
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.2774789   0.2164335   0.3385242
6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.7659978   0.7015130   0.8304825
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.3174783   0.2477331   0.3872235
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.4708503   0.3477503   0.5939502
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1560294   0.1364616   0.1755972
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.6275947   0.5932493   0.6619401
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1345970   0.0907110   0.1784830
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.8957979   0.8452160   0.9463798
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1926643   0.1563334   0.2289952
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.6661415   0.5663266   0.7659565
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1189683   0.0916637   0.1462729
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5046134   0.3742572   0.6349695
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1568002   0.1280190   0.1855814
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.5494101   0.4504914   0.6483288
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0724051   0.0607342   0.0840760
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4343664   0.3511750   0.5175579
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.1091050   0.0950369   0.1231730
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.4578940   0.3863975   0.5293906
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.1140351   0.0727079   0.1553623
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.9014084   0.8319497   0.9708672
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1511368   0.1189006   0.1833729
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5672416   0.4655376   0.6689457
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.1878887   0.1259188   0.2498585
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.7165253   0.6226838   0.8103669
6 months    ki1114097-CONTENT          PERU                           0                    NA                0.0609137   0.0274374   0.0943900
6 months    ki1114097-CONTENT          PERU                           1                    NA                0.3888889   0.1631549   0.6146229
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0604326   0.0464283   0.0744370
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.2590047   0.2175258   0.3004835
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1364764   0.1288621   0.1440907
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3966215   0.3641886   0.4290543
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.3187900   0.2866279   0.3509520
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.8967908   0.8489060   0.9446757
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.1287821   0.1203405   0.1372238
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.6073582   0.5740886   0.6406278
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1843250   0.1692823   0.1993676
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6499653   0.5736346   0.7262960
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1220356   0.1151313   0.1289399
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5461852   0.5312518   0.5611187
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1185334   0.1054867   0.1315802
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.5979124   0.5677543   0.6280705
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4245810   0.3520004   0.4971616
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.7575758   0.6110146   0.9041369
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.3856474   0.3164698   0.4548250
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.6941748   0.5378151   0.8505345
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1782735   0.1249413   0.2316058
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.5157878   0.3181620   0.7134135
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.3286866   0.2584511   0.3989221
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.6265760   0.4208947   0.8322572
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3504673   0.2864083   0.4145262
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3750000   0.1809059   0.5690941
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6974281   0.6444530   0.7504032
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7694433   0.6730145   0.8658721
24 months   ki1000108-IRC              INDIA                          0                    NA                0.3949866   0.3441436   0.4458296
24 months   ki1000108-IRC              INDIA                          1                    NA                0.5795589   0.4447404   0.7143773
24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.6245900   0.5281349   0.7210451
24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.8404720   0.7498518   0.9310923
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.5147816   0.4626835   0.5668797
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.8291189   0.7405829   0.9176549
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3031651   0.2635152   0.3428150
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5484786   0.4164480   0.6805092
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2192330   0.1806827   0.2577834
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.4725028   0.3535111   0.5914944
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.3023689   0.2794844   0.3252533
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.6434323   0.5717871   0.7150776
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4108570   0.3629995   0.4587145
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6543327   0.5519615   0.7567040
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.6052046   0.5270159   0.6833932
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.8275264   0.7450236   0.9100292
24 months   ki1114097-CONTENT          PERU                           0                    NA                0.0952381   0.0476399   0.1428362
24 months   ki1114097-CONTENT          PERU                           1                    NA                0.4117647   0.1770978   0.6464316
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.3125021   0.2882973   0.3367068
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.5540574   0.4898692   0.6182456
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7391892   0.7075390   0.7708393
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.9727273   0.9551459   0.9903087
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.5006922   0.4864288   0.5149556
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.7881414   0.7571403   0.8191425
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6065227   0.5865791   0.6264662
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.9132605   0.8655528   0.9609681
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.2739260   0.2286235   0.3192285
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.7678106   0.7076650   0.8279561
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.3897270   0.3742010   0.4052531
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.7183767   0.6988374   0.7379160
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2997062   0.2812486   0.3181638
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.6548600   0.6237325   0.6859874


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1825726   0.1336978   0.2314474
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1906780   0.1404524   0.2409036
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2197802   0.1705687   0.2689917
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1968504   0.1478551   0.2458457
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2388664   0.1855834   0.2921494
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.4906166   0.4398159   0.5414174
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.3598326   0.2988570   0.4208083
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2844311   0.2666491   0.3022132
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1589404   0.1297581   0.1881227
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0970922   0.0842059   0.1099785
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1412159   0.1262788   0.1561530
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3010033   0.2489243   0.3530824
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2163121   0.1823021   0.2503220
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.3827160   0.3214780   0.4439541
6 months    ki1114097-CONTENT          PERU                           NA                   NA                0.0883721   0.0503437   0.1264005
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765238
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1628792   0.1551057   0.1706527
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4099896   0.3788775   0.4411017
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1854227   0.1762253   0.1946201
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2513830   0.2432594   0.2595066
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2527427   0.2386864   0.2667990
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4764151   0.4090254   0.5438047
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4273128   0.3628178   0.4918077
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2192982   0.1654718   0.2731246
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7169811   0.6710815   0.7628807
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4205379   0.3726382   0.4684376
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.7065868   0.6373214   0.7758523
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5687646   0.5218455   0.6156837
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3368116   0.3145020   0.3591212
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4487705   0.4045970   0.4929440
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.6818182   0.6230135   0.7406228
24 months   ki1114097-CONTENT          PERU                           NA                   NA                0.1280488   0.0767522   0.1793453
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3469512   0.3239068   0.3699956
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8112150   0.7877559   0.8346740
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.5351321   0.5217497   0.5485145
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6229039   0.6036892   0.6421186
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4455959   0.4050760   0.4861157
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4910797   0.4779658   0.5041936
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4008838   0.3839145   0.4178532


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level    estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ---------  ----------  ----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 5.600428   3.4744544    9.027258
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                 1.000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                 2.811071   1.6658041    4.743728
6 months    ki0047075b-MAL-ED          PERU                           0                    0                 1.000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                 3.835589   2.5985855    5.661443
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 2.122087   1.2023686    3.745318
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 4.060293   2.7336549    6.030747
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.000000   1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 2.448974   1.8238554    3.288349
6 months    ki1000108-IRC              INDIA                          0                    0                 1.000000   1.0000000    1.000000
6 months    ki1000108-IRC              INDIA                          1                    0                 2.360858   1.6566826    3.364343
6 months    ki1000109-EE               PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 2.760563   2.1820757    3.492411
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 1.483094   1.0540488    2.086781
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 4.022285   3.5761399    4.524089
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.000000   1.0000000    1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 6.655408   4.7796481    9.267305
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 3.457524   2.7211786    4.393123
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 4.241579   3.0019193    5.993163
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 3.503887   2.7088196    4.532315
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 5.999114   4.6698411    7.706766
6 months    ki1101329-Keneba           GAMBIA                         0                    0                 1.000000   1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 4.196822   3.4289752    5.136611
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.000000   1.0000000    1.000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 7.904659   5.4572418   11.449672
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000    1.000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 3.753168   2.8401922    4.959618
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 3.813563   2.6786273    5.429373
6 months    ki1114097-CONTENT          PERU                           0                    0                 1.000000   1.0000000    1.000000
6 months    ki1114097-CONTENT          PERU                           1                    0                 6.384259   2.8705001   14.199186
6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.000000   1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 4.285841   3.3728811    5.445917
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 2.906154   2.6324304    3.208340
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 2.813108   2.5095450    3.153392
6 months    ki1135781-COHORTS          INDIA                          0                    0                 1.000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 4.716168   4.3308307    5.135790
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 3.526192   3.0568089    4.067651
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 4.475621   4.2202128    4.746486
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 5.044251   4.4532841    5.713641
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.784290   1.3783052    2.309860
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                 1.000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 1.800024   1.3507240    2.398779
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 2.893238   1.7745469    4.717162
24 months   ki0047075b-MAL-ED          PERU                           0                    0                 1.000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                 1.906302   1.2883775    2.820592
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.070000   0.6180093    1.852561
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.103258   0.9527037    1.277605
24 months   ki1000108-IRC              INDIA                          0                    0                 1.000000   1.0000000    1.000000
24 months   ki1000108-IRC              INDIA                          1                    0                 1.467287   1.1242425    1.915007
24 months   ki1000109-EE               PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
24 months   ki1000109-EE               PAKISTAN                       1                    0                 1.345638   1.1140640    1.625348
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.610623   1.3903462    1.865798
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.809175   1.3755368    2.379517
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 2.155253   1.5856040    2.929557
24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                 2.127972   1.8600625    2.434468
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.592604   1.3121066    1.933066
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 1.367350   1.1613931    1.609830
24 months   ki1114097-CONTENT          PERU                           0                    0                 1.000000   1.0000000    1.000000
24 months   ki1114097-CONTENT          PERU                           1                    0                 4.323529   2.0260059    9.226482
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.772972   1.5428453    2.037423
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.315938   1.2561782    1.378541
24 months   ki1135781-COHORTS          INDIA                          0                    0                 1.000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                 1.574104   1.5000637    1.651798
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.505732   1.4155919    1.601612
24 months   ki1148112-LCNI-5           MALAWI                         0                    0                 1.000000   1.0000000    1.000000
24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 2.802985   2.3329813    3.367677
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.843282   1.7602079    1.930276
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 2.185007   2.0240966    2.358708


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0759114    0.0424529   0.1093700
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.0435439    0.0137924   0.0732953
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.0554122    0.0283843   0.0824400
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0195283   -0.0018059   0.0408625
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0761889    0.0428840   0.1094938
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0686781    0.0397398   0.0976164
6 months    ki1000108-IRC              INDIA                          0                    NA                0.0401725    0.0193513   0.0609938
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.2131378    0.1669563   0.2593192
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.0423544    0.0027314   0.0819773
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1284017    0.1118628   0.1449406
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2943504    0.2490795   0.3396212
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0754921    0.0533705   0.0976137
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0399721    0.0238715   0.0560727
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0529900    0.0356659   0.0703142
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0246871    0.0177447   0.0316295
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0321109    0.0242250   0.0399969
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.1869683    0.1443605   0.2295760
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0651753    0.0439746   0.0863760
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.1948274    0.1421405   0.2475143
6 months    ki1114097-CONTENT          PERU                           0                    NA                0.0274584    0.0048058   0.0501110
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0022537    0.0010316   0.0034758
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0264028    0.0226608   0.0301448
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0911996    0.0749886   0.1074106
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0566406    0.0511673   0.0621139
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0269010    0.0208944   0.0329077
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1293474    0.1236787   0.1350161
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1342093    0.1227808   0.1456378
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0518341    0.0216109   0.0820572
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0416654    0.0122523   0.0710784
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.0410247    0.0132607   0.0687887
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0394726    0.0092692   0.0696760
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0024739   -0.0181585   0.0231063
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0195530   -0.0031615   0.0422675
24 months   ki1000108-IRC              INDIA                          0                    NA                0.0255513    0.0060789   0.0450237
24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.0819968    0.0265959   0.1373978
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0539829    0.0332649   0.0747010
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0255547    0.0104951   0.0406142
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0375763    0.0186526   0.0565000
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0344427    0.0254353   0.0434501
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0379135    0.0176500   0.0581770
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.0766136    0.0332578   0.1199694
24 months   ki1114097-CONTENT          PERU                           0                    NA                0.0328107    0.0039066   0.0617148
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0344491    0.0239553   0.0449430
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0720258    0.0591228   0.0849288
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0344399    0.0296670   0.0392128
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0163812    0.0123061   0.0204563
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.1716699    0.1391094   0.2042303
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1013527    0.0931621   0.1095432
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1011777    0.0903150   0.1120403


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4157875    0.2349722   0.5538669
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.2283633    0.0647651   0.3633437
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.2521253    0.1272087   0.3591635
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0992038   -0.0141280   0.1998704
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3189603    0.1772966   0.4362305
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2283082    0.1284435   0.3167302
6 months    ki1000108-IRC              INDIA                          0                    NA                0.1635022    0.0767075   0.2421377
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.4344283    0.3305013   0.5222226
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.1177057    0.0003587   0.2212774
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.4514334    0.3935973   0.5037534
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.6862156    0.5844218   0.7630755
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2815227    0.1990109   0.3555347
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2514912    0.1518105   0.3394572
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2525858    0.1707917   0.3263116
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2542643    0.1870091   0.3159558
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.2273890    0.1736357   0.2776457
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.6211501    0.4925719   0.7171476
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.3013022    0.2046237   0.3862293
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.5090651    0.3634967   0.6213420
6 months    ki1114097-CONTENT          PERU                           0                    NA                0.3107133    0.0459028   0.5020255
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0359526    0.0139827   0.0574329
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1621005    0.1397361   0.1838836
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2224437    0.1815485   0.2612955
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.3054674    0.2781813   0.3317220
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1273566    0.0992989   0.1545403
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.5145431    0.4948098   0.5335055
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.5310114    0.4892069   0.5693946
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1088003    0.0418131   0.1711044
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0975056    0.0252864   0.1643738
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1870727    0.0552123   0.3005298
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.1072161    0.0211215   0.1857385
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0070093   -0.0532053   0.0637813
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0272713   -0.0051389   0.0586364
24 months   ki1000108-IRC              INDIA                          0                    NA                0.0607586    0.0130968   0.1061185
24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.1160464    0.0308822   0.1937265
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0949126    0.0565353   0.1317289
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0777399    0.0308494   0.1223618
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1463198    0.0708822   0.2156324
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.1022611    0.0751896   0.1285401
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0844830    0.0377445   0.1289513
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.1123666    0.0441049   0.1757537
24 months   ki1114097-CONTENT          PERU                           0                    NA                0.2562358    0.0179802   0.4366864
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0992910    0.0685678   0.1290008
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0887875    0.0713595   0.1058885
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0643577    0.0552309   0.0733964
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0262982    0.0196221   0.0329288
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.3852591    0.3079244   0.4539521
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2063874    0.1885761   0.2238077
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2523865    0.2245710   0.2792041

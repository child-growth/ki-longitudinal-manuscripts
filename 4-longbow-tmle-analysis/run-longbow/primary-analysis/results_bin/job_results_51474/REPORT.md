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

**Intervention Variable:** birthwt

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
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        birthwt                       ever_co   n_cell       n
------------  -------------------------  -----------------------------  ---------------------------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          0      183     257
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          1       21     257
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                    0       37     257
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                    1       16     257
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          0      219     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          1        2     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                    0       12     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                    1        0     233
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          0      168     243
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          1       37     243
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                    0       24     243
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                    1       14     243
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          0      200     233
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          1       12     233
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                    0       15     233
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                    1        6     233
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight          0      274     299
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight          1        7     299
0-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                    0       13     299
0-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                    1        5     299
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          0      275     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          1       15     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                    0       15     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                    1        7     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      120     135
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1        8     135
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                    0        6     135
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                    1        1     135
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0      271     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1       59     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                    0       16     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                    1       27     373
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight          0      297     408
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight          1       42     408
0-24 months   ki1000108-IRC              INDIA                          Low birth weight                    0       36     408
0-24 months   ki1000108-IRC              INDIA                          Low birth weight                    1       33     408
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight          0      167     379
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight          1       78     379
0-24 months   ki1000109-EE               PAKISTAN                       Low birth weight                    0       68     379
0-24 months   ki1000109-EE               PAKISTAN                       Low birth weight                    1       66     379
0-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          0       18      22
0-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          1        1      22
0-24 months   ki1000109-ResPak           PAKISTAN                       Low birth weight                    0        3      22
0-24 months   ki1000109-ResPak           PAKISTAN                       Low birth weight                    1        0      22
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          0      943    1503
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          1      193    1503
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                    0      210    1503
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                    1      157    1503
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          0      124     225
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          1       19     225
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                    0       53     225
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                    1       29     225
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          0      489     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          1       43     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                    0      121     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                    1       47     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          0      549     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          1       32     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                    0      138     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                    1       39     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0     2188    2371
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1      101    2371
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                    0       67    2371
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                    1       15    2371
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight          0     1645    2119
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight          1      276    2119
0-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                    0      129    2119
0-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                    1       69    2119
0-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          0        5       9
0-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          1        0       9
0-24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                    0        3       9
0-24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                    1        1       9
0-24 months   ki1114097-CMIN             BRAZIL                         Normal or high birthweight          0      106     115
0-24 months   ki1114097-CMIN             BRAZIL                         Normal or high birthweight          1        1     115
0-24 months   ki1114097-CMIN             BRAZIL                         Low birth weight                    0        8     115
0-24 months   ki1114097-CMIN             BRAZIL                         Low birth weight                    1        0     115
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight          0        1       2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight          1        0       2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                    0        1       2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                    1        0       2
0-24 months   ki1114097-CMIN             PERU                           Normal or high birthweight          0       16      17
0-24 months   ki1114097-CMIN             PERU                           Normal or high birthweight          1        0      17
0-24 months   ki1114097-CMIN             PERU                           Low birth weight                    0        1      17
0-24 months   ki1114097-CMIN             PERU                           Low birth weight                    1        0      17
0-24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight          0        2       2
0-24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight          1        0       2
0-24 months   ki1114097-CONTENT          PERU                           Low birth weight                    0        0       2
0-24 months   ki1114097-CONTENT          PERU                           Low birth weight                    1        0       2
0-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight          0    16870   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight          1       27   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                    0        0   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                    1        0   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0    11729   13890
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1      334   13890
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                    0     1580   13890
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                    1      247   13890
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          0      763     929
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          1       85     929
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                    0       64     929
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                    1       17     929
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight          0     5088    6758
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight          1      291    6758
0-24 months   ki1135781-COHORTS          INDIA                          Low birth weight                    0     1059    6758
0-24 months   ki1135781-COHORTS          INDIA                          Low birth weight                    1      320    6758
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          0     2283    3001
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          1      431    3001
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                    0      168    3001
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                    1      119    3001
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          0    16183   26816
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          1      591   26816
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                    0     8257   26816
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                    1     1785   26816
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          0     2974    4508
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          1      355    4508
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                    0      792    4508
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                    1      387    4508
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          0      201     257
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          1        3     257
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                    0       47     257
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                    1        6     257
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          0      221     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                    0       12     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                    1        0     233
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          0      194     243
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          1       11     243
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight                    0       34     243
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight                    1        4     243
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          0      209     233
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          1        3     233
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight                    0       18     233
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight                    1        3     233
0-6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight          0      281     299
0-6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight          1        0     299
0-6 months    ki0047075b-MAL-ED          PERU                           Low birth weight                    0       16     299
0-6 months    ki0047075b-MAL-ED          PERU                           Low birth weight                    1        2     299
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          0      290     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                    0       17     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                    1        5     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      128     135
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1        0     135
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                    0        6     135
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                    1        1     135
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0      313     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1       12     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                    0       24     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                    1       19     368
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight          0      330     407
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight          1        9     407
0-6 months    ki1000108-IRC              INDIA                          Low birth weight                    0       53     407
0-6 months    ki1000108-IRC              INDIA                          Low birth weight                    1       15     407
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight          0      220     379
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight          1       25     379
0-6 months    ki1000109-EE               PAKISTAN                       Low birth weight                    0      106     379
0-6 months    ki1000109-EE               PAKISTAN                       Low birth weight                    1       28     379
0-6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          0       18      22
0-6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          1        1      22
0-6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                    0        3      22
0-6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                    1        0      22
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          0     1095    1495
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          1       40    1495
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                    0      294    1495
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                    1       66    1495
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          0      139     225
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          1        4     225
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                    0       63     225
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                    1       19     225
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          0      527     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          1        5     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                    0      143     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                    1       25     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          0      580     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          1        1     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                    0      161     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                    1       16     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0     2277    2371
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1       12    2371
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                    0       77    2371
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                    1        5    2371
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight          0     1734    1946
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight          1       34    1946
0-6 months    ki1101329-Keneba           GAMBIA                         Low birth weight                    0      155    1946
0-6 months    ki1101329-Keneba           GAMBIA                         Low birth weight                    1       23    1946
0-6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          0        5       9
0-6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          1        0       9
0-6 months    ki1114097-CMIN             BANGLADESH                     Low birth weight                    0        3       9
0-6 months    ki1114097-CMIN             BANGLADESH                     Low birth weight                    1        1       9
0-6 months    ki1114097-CMIN             BRAZIL                         Normal or high birthweight          0      107     115
0-6 months    ki1114097-CMIN             BRAZIL                         Normal or high birthweight          1        0     115
0-6 months    ki1114097-CMIN             BRAZIL                         Low birth weight                    0        8     115
0-6 months    ki1114097-CMIN             BRAZIL                         Low birth weight                    1        0     115
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight          0        1       2
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight          1        0       2
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                    0        1       2
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                    1        0       2
0-6 months    ki1114097-CMIN             PERU                           Normal or high birthweight          0       16      17
0-6 months    ki1114097-CMIN             PERU                           Normal or high birthweight          1        0      17
0-6 months    ki1114097-CMIN             PERU                           Low birth weight                    0        1      17
0-6 months    ki1114097-CMIN             PERU                           Low birth weight                    1        0      17
0-6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight          0        2       2
0-6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight          1        0       2
0-6 months    ki1114097-CONTENT          PERU                           Low birth weight                    0        0       2
0-6 months    ki1114097-CONTENT          PERU                           Low birth weight                    1        0       2
0-6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight          0    16874   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight          1       19   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                    0        0   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                    1        0   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0    11991   13797
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1       39   13797
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                    0     1639   13797
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                    1      128   13797
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          0      802     896
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          1       16     896
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight                    0       77     896
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight                    1        1     896
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight          0     5223    6593
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight          1       30    6593
0-6 months    ki1135781-COHORTS          INDIA                          Low birth weight                    0     1192    6593
0-6 months    ki1135781-COHORTS          INDIA                          Low birth weight                    1      148    6593
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          0     2674    3000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          1       40    3000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                    0      255    3000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                    1       31    3000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          0    16656   26763
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          1      115   26763
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                    0     9053   26763
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                    1      939   26763
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          0     3292    4466
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          1       28    4466
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                    0     1050    4466
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                    1       96    4466
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          0      166     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          1       19     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                    0       35     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                    1       14     234
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          0      195     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          1        2     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                    0       10     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                    1        0     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          0      159     228
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          1       33     228
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                    0       24     228
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                    1       12     228
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          0      197     228
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          1       10     228
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                    0       18     228
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                    1        3     228
6-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight          0      243     267
6-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight          1        7     267
6-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                    0       13     267
6-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                    1        4     267
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          0      228     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          1       15     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                    0       12     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                    1        4     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      110     123
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1        8     123
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                    0        5     123
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                    1        0     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0      279     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1       51     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                    0       24     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                    1       19     373
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight          0      301     408
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight          1       38     408
6-24 months   ki1000108-IRC              INDIA                          Low birth weight                    0       43     408
6-24 months   ki1000108-IRC              INDIA                          Low birth weight                    1       26     408
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight          0      166     373
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight          1       75     373
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight                    0       75     373
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight                    1       57     373
6-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          0       13      16
6-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          1        1      16
6-24 months   ki1000109-ResPak           PAKISTAN                       Low birth weight                    0        2      16
6-24 months   ki1000109-ResPak           PAKISTAN                       Low birth weight                    1        0      16
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          0      865    1379
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          1      181    1379
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                    0      201    1379
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                    1      132    1379
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          0      101     180
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          1       16     180
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                    0       43     180
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                    1       20     180
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          0      427     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          1       39     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                    0      112     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                    1       36     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          0      528     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          1       31     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                    0      139     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                    1       32     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0     1834    1997
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1       98    1997
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                    0       52    1997
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                    1       13    1997
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight          0     1591    2039
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight          1      265    2039
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                    0      125    2039
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                    1       58    2039
6-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          0        0       1
6-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          1        0       1
6-24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                    0        1       1
6-24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                    1        0       1
6-24 months   ki1114097-CMIN             BRAZIL                         Normal or high birthweight          0      106     115
6-24 months   ki1114097-CMIN             BRAZIL                         Normal or high birthweight          1        1     115
6-24 months   ki1114097-CMIN             BRAZIL                         Low birth weight                    0        8     115
6-24 months   ki1114097-CMIN             BRAZIL                         Low birth weight                    1        0     115
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight          0        1       2
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight          1        0       2
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                    0        1       2
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                    1        0       2
6-24 months   ki1114097-CMIN             PERU                           Normal or high birthweight          0       13      14
6-24 months   ki1114097-CMIN             PERU                           Normal or high birthweight          1        0      14
6-24 months   ki1114097-CMIN             PERU                           Low birth weight                    0        1      14
6-24 months   ki1114097-CMIN             PERU                           Low birth weight                    1        0      14
6-24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight          0        2       2
6-24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight          1        0       2
6-24 months   ki1114097-CONTENT          PERU                           Low birth weight                    0        0       2
6-24 months   ki1114097-CONTENT          PERU                           Low birth weight                    1        0       2
6-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight          0    16589   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight          1        9   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                    0        0   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                    1        0   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0     8970   10658
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1      304   10658
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                    0     1254   10658
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                    1      130   10658
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          0      679     825
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          1       74     825
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                    0       56     825
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                    1       16     825
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight          0     4750    6296
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight          1      284    6296
6-24 months   ki1135781-COHORTS          INDIA                          Low birth weight                    0     1019    6296
6-24 months   ki1135781-COHORTS          INDIA                          Low birth weight                    1      243    6296
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          0     2091    2765
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          1      420    2765
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                    0      148    2765
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                    1      106    2765
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          0    10445   17197
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          1      493   17197
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                    0     5256   17197
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                    1     1003   17197
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          0     2983    4499
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          1      338    4499
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                    0      847    4499
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                    1      331    4499


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
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/06a58fcf-901e-42f3-b725-771b7dfab878/e628a1a6-6254-4683-8de4-c793a02baaa7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/06a58fcf-901e-42f3-b725-771b7dfab878/e628a1a6-6254-4683-8de4-c793a02baaa7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/06a58fcf-901e-42f3-b725-771b7dfab878/e628a1a6-6254-4683-8de4-c793a02baaa7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/06a58fcf-901e-42f3-b725-771b7dfab878/e628a1a6-6254-4683-8de4-c793a02baaa7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1023626   0.0604733   0.1442520
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.2801223   0.1564591   0.4037854
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1812885   0.1284321   0.2341449
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.3345160   0.1722087   0.4968232
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.0566038   0.0254304   0.0877772
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                0.2857143   0.0920835   0.4793451
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.0249110   0.0066578   0.0431643
0-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight             NA                0.2777778   0.0705140   0.4850416
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.0517241   0.0261936   0.0772547
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                0.3181818   0.1232396   0.5131240
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1783995   0.1369634   0.2198357
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.6029840   0.4520334   0.7539346
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1215964   0.0864868   0.1567059
0-24 months   ki1000108-IRC              INDIA                          Low birth weight             NA                0.4987241   0.3802613   0.6171868
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.3181044   0.2591800   0.3770288
0-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.4938401   0.4109745   0.5767057
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.1696981   0.1335411   0.2058550
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.4317806   0.3674003   0.4961609
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1281023   0.0728926   0.1833121
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.3664738   0.2591089   0.4738388
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0810096   0.0575824   0.1044368
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.2983635   0.2277807   0.3689463
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0542104   0.0356698   0.0727509
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.2270593   0.1650173   0.2891014
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0440265   0.0356172   0.0524358
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.1803634   0.0971763   0.2635505
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1425036   0.1268469   0.1581603
0-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.3637936   0.2982977   0.4292895
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0275647   0.0246403   0.0304891
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.1388921   0.1227101   0.1550741
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0997836   0.0796027   0.1199645
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.2109828   0.1203841   0.3015814
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0534118   0.0473988   0.0594247
0-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.2395536   0.2172080   0.2618991
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1580313   0.1442854   0.1717772
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.4248771   0.3682574   0.4814969
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0350346   0.0319341   0.0381350
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.1788773   0.1710584   0.1866962
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.1061406   0.0936147   0.1186664
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.3333507   0.3023742   0.3643271
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0367555   0.0162087   0.0573023
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.3856562   0.2306976   0.5406148
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0265487   0.0094146   0.0436828
0-6 months    ki1000108-IRC              INDIA                          Low birth weight             NA                0.2205882   0.1219143   0.3192622
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1001224   0.0622703   0.1379745
0-6 months    ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.2142239   0.1447427   0.2837052
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0351963   0.0175729   0.0528197
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.1870652   0.1338010   0.2403295
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0093985   0.0011934   0.0176035
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.1488095   0.0949537   0.2026653
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0052425   0.0022835   0.0082015
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.0609756   0.0091733   0.1127779
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0191611   0.0127528   0.0255695
0-6 months    ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.1160569   0.0694173   0.1626964
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0032577   0.0022360   0.0042794
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.0730020   0.0606139   0.0853901
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0056454   0.0036236   0.0076673
0-6 months    ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.1116668   0.0948606   0.1284730
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0146221   0.0101046   0.0191396
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.1093962   0.0723782   0.1464143
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0069245   0.0056265   0.0082226
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.0939318   0.0879985   0.0998651
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0083882   0.0044622   0.0123142
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.0869007   0.0674628   0.1063386
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1030752   0.0592577   0.1468926
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.2901131   0.1700021   0.4102241
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1715794   0.1180008   0.2251581
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.3116342   0.1528008   0.4704677
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1532491   0.1141924   0.1923059
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.4245785   0.2707215   0.5784356
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1098779   0.0762761   0.1434797
6-24 months   ki1000108-IRC              INDIA                          Low birth weight             NA                0.4064326   0.2899591   0.5229062
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.3103118   0.2513462   0.3692773
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.4349586   0.3519285   0.5179888
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.1725753   0.1413871   0.2037636
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.4007161   0.3329644   0.4684678
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1301671   0.0683956   0.1919386
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.3307118   0.2140285   0.4473951
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0835788   0.0583625   0.1087950
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.2428204   0.1723006   0.3133402
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0545669   0.0356154   0.0735183
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.1930999   0.1336499   0.2525498
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0506805   0.0408929   0.0604681
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.2116425   0.1158898   0.3073951
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1417168   0.1258355   0.1575981
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.3386142   0.2712107   0.4060176
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0325618   0.0289429   0.0361807
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.0967508   0.0813122   0.1121895
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0977507   0.0765193   0.1189821
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.2220671   0.1237162   0.3204181
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0556448   0.0493052   0.0619844
6-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.2005060   0.1786901   0.2223219
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1664553   0.1518587   0.1810519
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.4266537   0.3666601   0.4866473
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0446175   0.0403635   0.0488714
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.1626072   0.1528965   0.1723180
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.1013009   0.0890750   0.1135267
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.2850588   0.2565521   0.3135655


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1439689   0.1009650   0.1869727
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2098765   0.1585703   0.2611827
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.0772532   0.0428971   0.1116093
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0401338   0.0178494   0.0624181
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.0705128   0.0420601   0.0989655
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2305630   0.1877616   0.2733644
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1838235   0.1461927   0.2214543
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.3799472   0.3310169   0.4288776
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2328676   0.1923832   0.2733520
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2133333   0.1596859   0.2669808
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0489245   0.0402400   0.0576090
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1628126   0.1470895   0.1785358
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0418287   0.0384992   0.0451581
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1097955   0.0896809   0.1299101
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0904114   0.0835737   0.0972490
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1832722   0.1694278   0.1971167
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0886038   0.0847199   0.0924878
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1645963   0.1519758   0.1772167
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0842391   0.0558231   0.1126551
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0589681   0.0360543   0.0818818
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.1398417   0.1048786   0.1748048
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0709030   0.0481799   0.0936261
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0071700   0.0037732   0.0105668
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0292909   0.0217971   0.0367846
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0121041   0.0102794   0.0139288
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0269983   0.0230857   0.0309109
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0236667   0.0182263   0.0291070
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0393827   0.0368929   0.0418726
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0277653   0.0218336   0.0336971
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1410256   0.0963358   0.1857155
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1973684   0.1455920   0.2491449
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1876676   0.1479906   0.2273445
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1568627   0.1215314   0.1921941
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.3538874   0.3052956   0.4024792
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2269761   0.1910133   0.2629388
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2000000   0.1414022   0.2585978
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0555834   0.0455321   0.0656347
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1584110   0.1425588   0.1742632
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0407206   0.0369682   0.0444730
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1090909   0.0878048   0.1303770
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0837039   0.0768626   0.0905453
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1902351   0.1756031   0.2048671
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0869919   0.0823156   0.0916682
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1486997   0.1368826   0.1605168


### Parameter: RR


agecat        studyid                    country                        intervention_level           baseline_level                 estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight     2.736568    1.4935449    5.014113
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight     1.845213    1.0467733    3.252674
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight     5.047619    2.1078156   12.087613
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight    11.150794    3.9186069   31.730715
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight     6.151515    2.8008727   13.510481
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight     3.379964    2.4021740    4.755759
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight     4.101472    2.8265975    5.951351
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight     1.552447    1.2096698    1.992354
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight     2.544405    2.0894548    3.098415
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight     2.860789    1.6989410    4.817186
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight     3.683063    2.5323290    5.356712
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight     4.188485    2.7023608    6.491883
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight     4.096703    2.4863369    6.750079
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight     2.552873    2.0695755    3.149033
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight     5.038763    4.3046062    5.898131
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight     2.114403    1.3148133    3.400256
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight     4.485035    3.8766875    5.188847
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight     2.688563    2.2941189    3.150826
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight     5.105736    4.6423108    5.615423
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight     3.140652    2.7032321    3.648853
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    10.492483    5.2727975   20.879276
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight     8.308824    3.7888715   18.220874
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight     2.139621    1.3001544    3.521102
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight     5.314916    3.2349455    8.732242
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    15.833333    6.1537207   40.738678
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    11.631098    4.1942654   32.254142
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight     6.056897    3.5936781   10.208481
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    22.409190   15.6878195   32.010298
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    19.780073   13.4136031   29.168247
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight     7.481554    4.7310829   11.831043
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    13.565062   11.1279284   16.535955
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    10.359881    6.1967263   17.319975
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight     2.814579    1.5761229    5.026165
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight     1.816268    0.9971724    3.308184
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight     2.770512    1.7808901    4.310057
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight     3.698947    2.4337469    5.621869
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight     1.401683    1.0721336    1.832528
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight     2.321978    1.9176652    2.811534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight     2.540671    1.4096263    4.579236
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight     2.905287    1.9123564    4.413766
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight     3.538775    2.2243910    5.629823
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight     4.176015    2.5529837    6.830869
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight     2.389372    1.9036084    2.999093
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight     2.971300    2.4465272    3.608634
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight     2.271771    1.3859682    3.723708
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight     3.603320    3.0799455    4.215631
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight     2.563173    2.1730358    3.023353
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight     3.644474    3.2650057    4.068045
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight     2.813982    2.4064681    3.290505


### Parameter: PAR


agecat        studyid                    country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.0416062    0.0126584   0.0705541
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0285880    0.0016143   0.0555618
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.0206494    0.0010604   0.0402385
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.0152227    0.0009565   0.0294890
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.0187887    0.0029877   0.0345896
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0521635    0.0294239   0.0749031
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0622272    0.0376974   0.0867570
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0618428    0.0244630   0.0992226
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0631695    0.0408691   0.0854699
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0852310    0.0401693   0.1302927
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0475618    0.0290211   0.0661026
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0394572    0.0236532   0.0552612
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0048980    0.0018113   0.0079848
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0203091    0.0134612   0.0271569
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0142639    0.0120813   0.0164466
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0100119    0.0017758   0.0182480
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0369996    0.0320094   0.0419898
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0252409    0.0190285   0.0314533
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0535692    0.0503327   0.0568058
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0584557    0.0494132   0.0674981
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0474837    0.0254680   0.0694993
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0324194    0.0142656   0.0505732
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0397193    0.0114552   0.0679834
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0357067    0.0195604   0.0518531
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0334586    0.0196592   0.0472581
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0019275    0.0000868   0.0037682
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0101297    0.0053618   0.0148977
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0088464    0.0072450   0.0104478
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0213529    0.0177710   0.0249348
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0090445    0.0054406   0.0126485
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0324582    0.0300610   0.0348554
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0193771    0.0142583   0.0244960
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.0379505    0.0097696   0.0661314
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0257890   -0.0015615   0.0531395
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0344185    0.0142801   0.0545568
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0469848    0.0245847   0.0693849
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0435756    0.0071164   0.0800348
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0544007    0.0345541   0.0742474
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0698329    0.0227830   0.1168828
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0385710    0.0200311   0.0571109
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0317345    0.0166943   0.0467747
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0049029    0.0015100   0.0082957
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0166942    0.0101659   0.0232225
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0081588    0.0060757   0.0102419
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0113402    0.0023360   0.0203444
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0280591    0.0233515   0.0327668
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0237798    0.0174613   0.0300983
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0423744    0.0385436   0.0462052
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0473988    0.0392280   0.0555696


### Parameter: PAF


agecat        studyid                    country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.2889947    0.0754148   0.4532375
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1362136    0.0005600   0.2534550
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.2672956    0.0000866   0.4630978
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.3793001    0.0090832   0.6112001
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.2664577    0.0367304   0.4413980
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.2262440    0.1265063   0.3145933
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.3385158    0.2052325   0.4494474
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1627669    0.0579192   0.2559456
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.2712681    0.1809602   0.3516185
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.3995203    0.1678821   0.5666769
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.3699253    0.2264775   0.4867712
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.4212470    0.2565348   0.5494678
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1001141    0.0371729   0.1589407
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1247388    0.0827293   0.1648244
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.3410087    0.2942900   0.3846346
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0911867    0.0145527   0.1618613
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.4092363    0.3601086   0.4545922
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1377236    0.1041020   0.1700834
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.6045929    0.5751107   0.6320294
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.3551458    0.3014882   0.4046816
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.5636769    0.3286465   0.7164269
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.5497788    0.2539172   0.7283154
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.2840304    0.0621849   0.4533972
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.5035997    0.2915371   0.6521860
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.7807018    0.5147381   0.9008953
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.2688305    0.0076893   0.4612485
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.3458330    0.1920386   0.4703528
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.7308609    0.6459356   0.7954161
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.7908975    0.7103469   0.8490475
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.3821636    0.2428897   0.4958174
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.8241732    0.7901464   0.8526828
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.6978897    0.5493334   0.7974764
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.2691035    0.0544746   0.4350128
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1306643   -0.0165936   0.2565913
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1834012    0.0733842   0.2803558
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.2995281    0.1544530   0.4197119
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1231342    0.0133990   0.2206640
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.2396761    0.1598375   0.3119278
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.3491646    0.0829124   0.5381175
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.3157683    0.1609031   0.4420513
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.3677172    0.1923154   0.5050276
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0882078    0.0270643   0.1455088
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1053852    0.0640291   0.1449141
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2003605    0.1507746   0.2470511
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.1039520    0.0196217   0.1810285
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.3352188    0.2828923   0.3837272
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1250020    0.0919244   0.1568747
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.4871078    0.4477573   0.5236542
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.3187555    0.2633215   0.3700181

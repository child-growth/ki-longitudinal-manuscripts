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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** sex

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        sex       ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  -------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               0       60     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               1       76     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 0       44     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 1       85     265
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               0       89     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               1       24     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 0       90     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 1       30     233
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               0       62     251
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               1       76     251
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                 0       39     251
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                 1       74     251
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female               0       73     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female               1       37     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 0       84     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 1       46     240
0-24 months   ki0047075b-MAL-ED          PERU                           Female               0       67     303
0-24 months   ki0047075b-MAL-ED          PERU                           Female               1       76     303
0-24 months   ki0047075b-MAL-ED          PERU                           Male                 0       48     303
0-24 months   ki0047075b-MAL-ED          PERU                           Male                 1      112     303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               0       83     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               1       76     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 0       60     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 1       95     314
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               0       25     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               1      108     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 0       16     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 1      113     262
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               0       13     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               1      174     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 0       15     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 1      171     373
0-24 months   ki1000108-IRC              INDIA                          Female               0       72     410
0-24 months   ki1000108-IRC              INDIA                          Female               1      113     410
0-24 months   ki1000108-IRC              INDIA                          Male                 0       75     410
0-24 months   ki1000108-IRC              INDIA                          Male                 1      150     410
0-24 months   ki1000109-EE               PAKISTAN                       Female               0       16     379
0-24 months   ki1000109-EE               PAKISTAN                       Female               1      169     379
0-24 months   ki1000109-EE               PAKISTAN                       Male                 0       17     379
0-24 months   ki1000109-EE               PAKISTAN                       Male                 1      177     379
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               0       50     278
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               1       82     278
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                 0       47     278
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                 1       99     278
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               0      234    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               1      466    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 0      239    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 1      594    1533
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               0       39     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               1      184     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 0       33     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 1      162     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               0      112     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               1      185     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 0       99     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 1      233     629
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               0      199     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               1      133     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 0      197     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 1      171     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               0      209     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               1      172     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 0      187     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 1      190     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               0      835    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               1      349    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 0      732    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 1      480    2396
0-24 months   ki1101329-Keneba           GAMBIA                         Female               0      735    2915
0-24 months   ki1101329-Keneba           GAMBIA                         Female               1      672    2915
0-24 months   ki1101329-Keneba           GAMBIA                         Male                 0      686    2915
0-24 months   ki1101329-Keneba           GAMBIA                         Male                 1      822    2915
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               0       81     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               1       81     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 0       67     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 1       86     315
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               0     1133    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               1      492    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 0      949    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 1      691    3265
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               0       93     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               1      195     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 0      103     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 1      211     602
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               0       18     277
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               1      102     277
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                 0       23     277
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                 1      134     277
0-24 months   ki1114097-CMIN             BRAZIL                         Female               0       43     119
0-24 months   ki1114097-CMIN             BRAZIL                         Female               1       19     119
0-24 months   ki1114097-CMIN             BRAZIL                         Male                 0       36     119
0-24 months   ki1114097-CMIN             BRAZIL                         Male                 1       21     119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               0      459    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               1      299    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 0      402    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 1      347    1507
0-24 months   ki1114097-CMIN             PERU                           Female               0      284     929
0-24 months   ki1114097-CMIN             PERU                           Female               1      160     929
0-24 months   ki1114097-CMIN             PERU                           Male                 0      280     929
0-24 months   ki1114097-CMIN             PERU                           Male                 1      205     929
0-24 months   ki1114097-CONTENT          PERU                           Female               0       96     215
0-24 months   ki1114097-CONTENT          PERU                           Female               1       10     215
0-24 months   ki1114097-CONTENT          PERU                           Male                 0       56     215
0-24 months   ki1114097-CONTENT          PERU                           Male                 1       53     215
0-24 months   ki1119695-PROBIT           BELARUS                        Female               0     8266   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Female               1      477   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Male                 0     5801   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Male                 1     2353   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               0     4337   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               1     2497   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 0     4154   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 1     3085   14073
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               0      158    1368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               1      486    1368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 0      165    1368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 1      559    1368
0-24 months   ki1135781-COHORTS          INDIA                          Female               0     2321    7417
0-24 months   ki1135781-COHORTS          INDIA                          Female               1     1233    7417
0-24 months   ki1135781-COHORTS          INDIA                          Male                 0     2346    7417
0-24 months   ki1135781-COHORTS          INDIA                          Male                 1     1517    7417
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               0      488    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               1      949    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 0      471    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 1     1150    3058
0-24 months   ki1148112-LCNI-5           MALAWI                         Female               0      183     840
0-24 months   ki1148112-LCNI-5           MALAWI                         Female               1      238     840
0-24 months   ki1148112-LCNI-5           MALAWI                         Male                 0      122     840
0-24 months   ki1148112-LCNI-5           MALAWI                         Male                 1      297     840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               0     7114   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               1     6268   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 0     6673   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 1     7181   27236
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               0     1203    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               1     1521    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 0     1076    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 1     1642    5442
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               0       99     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               1       37     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 0       72     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 1       57     265
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female               0       92     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female               1       21     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Male                 0       96     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Male                 1       24     233
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               0      102     251
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               1       36     251
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                 0       63     251
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                 1       50     251
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female               0       94     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female               1       16     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Male                 0      104     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Male                 1       26     240
0-6 months    ki0047075b-MAL-ED          PERU                           Female               0       92     303
0-6 months    ki0047075b-MAL-ED          PERU                           Female               1       51     303
0-6 months    ki0047075b-MAL-ED          PERU                           Male                 0       82     303
0-6 months    ki0047075b-MAL-ED          PERU                           Male                 1       78     303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               0      112     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               1       47     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 0       89     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 1       66     314
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               0       76     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               1       57     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 0       78     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 1       51     262
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               0      102     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               1       83     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 0       78     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 1      105     368
0-6 months    ki1000108-IRC              INDIA                          Female               0      111     410
0-6 months    ki1000108-IRC              INDIA                          Female               1       74     410
0-6 months    ki1000108-IRC              INDIA                          Male                 0      125     410
0-6 months    ki1000108-IRC              INDIA                          Male                 1      100     410
0-6 months    ki1000109-EE               PAKISTAN                       Female               0       57     379
0-6 months    ki1000109-EE               PAKISTAN                       Female               1      128     379
0-6 months    ki1000109-EE               PAKISTAN                       Male                 0       42     379
0-6 months    ki1000109-EE               PAKISTAN                       Male                 1      152     379
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               0       56     278
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               1       76     278
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                 0       58     278
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                 1       88     278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               0      419    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               1      281    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 0      460    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 1      370    1530
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               0      141     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               1       81     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 0      113     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 1       81     416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               0      217     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               1       80     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 0      192     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 1      140     629
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               0      265     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               1       67     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 0      268     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 1      100     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               0      275     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               1      106     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 0      254     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 1      123     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               0     1001    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               1      183    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 0      928    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 1      284    2396
0-6 months    ki1101329-Keneba           GAMBIA                         Female               0      851    2465
0-6 months    ki1101329-Keneba           GAMBIA                         Female               1      334    2465
0-6 months    ki1101329-Keneba           GAMBIA                         Male                 0      844    2465
0-6 months    ki1101329-Keneba           GAMBIA                         Male                 1      436    2465
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               0      109     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               1       45     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 0       93     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 1       48     295
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               0      215     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               1       73     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 0      220     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 1       94     602
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               0       58     277
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               1       62     277
0-6 months    ki1114097-CMIN             BANGLADESH                     Male                 0       62     277
0-6 months    ki1114097-CMIN             BANGLADESH                     Male                 1       95     277
0-6 months    ki1114097-CMIN             BRAZIL                         Female               0       57     119
0-6 months    ki1114097-CMIN             BRAZIL                         Female               1        5     119
0-6 months    ki1114097-CMIN             BRAZIL                         Male                 0       47     119
0-6 months    ki1114097-CMIN             BRAZIL                         Male                 1       10     119
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               0      407     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               1       66     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 0      412     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 1       80     965
0-6 months    ki1114097-CMIN             PERU                           Female               0      290     699
0-6 months    ki1114097-CMIN             PERU                           Female               1       35     699
0-6 months    ki1114097-CMIN             PERU                           Male                 0      319     699
0-6 months    ki1114097-CMIN             PERU                           Male                 1       55     699
0-6 months    ki1114097-CONTENT          PERU                           Female               0       99     215
0-6 months    ki1114097-CONTENT          PERU                           Female               1        7     215
0-6 months    ki1114097-CONTENT          PERU                           Male                 0       68     215
0-6 months    ki1114097-CONTENT          PERU                           Male                 1       41     215
0-6 months    ki1119695-PROBIT           BELARUS                        Female               0     8506   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Female               1      235   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Male                 0     6706   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Male                 1     1446   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               0     5210   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               1     1617   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 0     5216   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 1     2008   14051
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female               0      359    1092
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female               1      162    1092
0-6 months    ki1135781-COHORTS          GUATEMALA                      Male                 0      377    1092
0-6 months    ki1135781-COHORTS          GUATEMALA                      Male                 1      194    1092
0-6 months    ki1135781-COHORTS          INDIA                          Female               0     2901    7176
0-6 months    ki1135781-COHORTS          INDIA                          Female               1      579    7176
0-6 months    ki1135781-COHORTS          INDIA                          Male                 0     2937    7176
0-6 months    ki1135781-COHORTS          INDIA                          Male                 1      759    7176
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               0     1151    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               1      286    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 0     1176    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 1      445    3058
0-6 months    ki1148112-LCNI-5           MALAWI                         Female               0       97     272
0-6 months    ki1148112-LCNI-5           MALAWI                         Female               1       32     272
0-6 months    ki1148112-LCNI-5           MALAWI                         Male                 0       78     272
0-6 months    ki1148112-LCNI-5           MALAWI                         Male                 1       65     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               0     8113   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               1     5245   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 0     7896   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 1     5916   27170
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               0     1730    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               1      853    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 0     1616    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 1      931    5130


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
![](/tmp/96ada362-7ada-49ce-875a-76c859b41dd7/9dc94e29-99cb-413a-9768-7b1c42afe1a7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/96ada362-7ada-49ce-875a-76c859b41dd7/9dc94e29-99cb-413a-9768-7b1c42afe1a7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/96ada362-7ada-49ce-875a-76c859b41dd7/9dc94e29-99cb-413a-9768-7b1c42afe1a7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/96ada362-7ada-49ce-875a-76c859b41dd7/9dc94e29-99cb-413a-9768-7b1c42afe1a7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.5588235   0.4752164   0.6424306
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.6589147   0.5769513   0.7408782
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                0.2123894   0.1368167   0.2879621
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 NA                0.2500000   0.1723588   0.3276412
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.5507246   0.4675676   0.6338817
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.6548673   0.5670367   0.7426978
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                0.3363636   0.2478871   0.4248402
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.3538462   0.2714782   0.4362141
0-24 months   ki0047075b-MAL-ED          PERU                           Female               NA                0.5314685   0.4495455   0.6133916
0-24 months   ki0047075b-MAL-ED          PERU                           Male                 NA                0.7000000   0.6288761   0.7711239
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.4779874   0.4002212   0.5557536
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.6129032   0.5360998   0.6897067
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.8120301   0.7455054   0.8785548
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.8759690   0.8189797   0.9329583
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.9304813   0.8939794   0.9669831
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.9193548   0.8801712   0.9585385
0-24 months   ki1000108-IRC              INDIA                          Female               NA                0.6108108   0.5404669   0.6811547
0-24 months   ki1000108-IRC              INDIA                          Male                 NA                0.6666667   0.6049957   0.7283376
0-24 months   ki1000109-EE               PAKISTAN                       Female               NA                0.9135135   0.8729564   0.9540707
0-24 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.9123711   0.8725301   0.9522121
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                0.6212121   0.5383108   0.7041135
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                 NA                0.6780822   0.6021602   0.7540042
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.6657143   0.6220483   0.7093803
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.7130852   0.6695064   0.7566641
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.8251121   0.7751947   0.8750295
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.8307692   0.7780789   0.8834595
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.6228956   0.5677319   0.6780594
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.7018072   0.6525600   0.7510545
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.4006024   0.3478547   0.4533501
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.4646739   0.4136800   0.5156678
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.4514436   0.4014419   0.5014453
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.5039788   0.4534754   0.5544821
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.2947635   0.2687878   0.3207392
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.3960396   0.3684998   0.4235794
0-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.4776119   0.4515078   0.5037161
0-24 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.5450928   0.5199555   0.5702301
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                0.5000000   0.4228828   0.5771172
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                0.5620915   0.4833528   0.6408302
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                0.3027692   0.2666148   0.3389237
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 NA                0.4213415   0.3442350   0.4984479
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.6770833   0.6230354   0.7311313
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.6719745   0.6200019   0.7239471
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.8500000   0.7859974   0.9140026
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.8535032   0.7980916   0.9089147
0-24 months   ki1114097-CMIN             BRAZIL                         Female               NA                0.3064516   0.1912114   0.4216918
0-24 months   ki1114097-CMIN             BRAZIL                         Male                 NA                0.3684211   0.2426649   0.4941772
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.3944591   0.3596550   0.4292632
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.4632844   0.4275614   0.4990073
0-24 months   ki1114097-CMIN             PERU                           Female               NA                0.3603604   0.3156790   0.4050417
0-24 months   ki1114097-CMIN             PERU                           Male                 NA                0.4226804   0.3786933   0.4666675
0-24 months   ki1114097-CONTENT          PERU                           Female               NA                0.0943396   0.0385649   0.1501143
0-24 months   ki1114097-CONTENT          PERU                           Male                 NA                0.4862385   0.3921899   0.5802872
0-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                0.0545579   0.0428419   0.0662740
0-24 months   ki1119695-PROBIT           BELARUS                        Male                 NA                0.2885700   0.2620244   0.3151157
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.3653790   0.3539619   0.3767961
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.4261638   0.4147717   0.4375560
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.7546584   0.7214135   0.7879033
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.7720994   0.7415329   0.8026660
0-24 months   ki1135781-COHORTS          INDIA                          Female               NA                0.3469330   0.3312828   0.3625832
0-24 months   ki1135781-COHORTS          INDIA                          Male                 NA                0.3927000   0.3772990   0.4081009
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.6604036   0.6359143   0.6848930
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.7094386   0.6873329   0.7315443
0-24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                0.5653207   0.5179404   0.6127009
0-24 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                0.7088305   0.6653050   0.7523561
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.4683904   0.4584885   0.4782922
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.5183341   0.5081107   0.5285574
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.5583700   0.5369431   0.5797969
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.6041207   0.5818153   0.6264261
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.2720588   0.1971248   0.3469929
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.4418605   0.3560010   0.5277199
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female               NA                0.1858407   0.1139673   0.2577141
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Male                 NA                0.2000000   0.1282782   0.2717218
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                0.2608696   0.1874608   0.3342783
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                 NA                0.4424779   0.3507181   0.5342377
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                0.1454545   0.0794324   0.2114767
0-6 months    ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.2000000   0.1310962   0.2689038
0-6 months    ki0047075b-MAL-ED          PERU                           Female               NA                0.3566434   0.2780038   0.4352829
0-6 months    ki0047075b-MAL-ED          PERU                           Male                 NA                0.4875000   0.4099217   0.5650783
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.2955975   0.2245575   0.3666375
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.4258065   0.3478396   0.5037733
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.4285714   0.3443068   0.5128360
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.3953488   0.3108158   0.4798818
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.4486486   0.3768824   0.5204149
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.5737705   0.5020234   0.6455176
0-6 months    ki1000108-IRC              INDIA                          Female               NA                0.4000000   0.3293197   0.4706803
0-6 months    ki1000108-IRC              INDIA                          Male                 NA                0.4444444   0.3794375   0.5094514
0-6 months    ki1000109-EE               PAKISTAN                       Female               NA                0.6918919   0.6252716   0.7585122
0-6 months    ki1000109-EE               PAKISTAN                       Male                 NA                0.7835052   0.7254734   0.8415369
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                0.5757576   0.4912938   0.6602214
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                 NA                0.6027397   0.5232233   0.6822561
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.4014286   0.3638208   0.4390364
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.4457831   0.4109668   0.4805995
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.3648649   0.3014643   0.4282655
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.4175258   0.3480474   0.4870042
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.2693603   0.2188670   0.3198536
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.4216867   0.3685248   0.4748487
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.2018072   0.1586044   0.2450100
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.2717391   0.2262556   0.3172227
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.2782152   0.2331889   0.3232416
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.3262599   0.2789021   0.3736178
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.1545608   0.1339662   0.1751554
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.2343234   0.2104718   0.2581751
0-6 months    ki1101329-Keneba           GAMBIA                         Female               NA                0.2818565   0.2562355   0.3074776
0-6 months    ki1101329-Keneba           GAMBIA                         Male                 NA                0.3406250   0.3146572   0.3665928
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                0.2922078   0.2202589   0.3641566
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                0.3404255   0.2620792   0.4187719
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.2534722   0.2031916   0.3037529
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.2993631   0.2486652   0.3500609
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                0.5166667   0.4270948   0.6062385
0-6 months    ki1114097-CMIN             BANGLADESH                     Male                 NA                0.6050955   0.5284933   0.6816978
0-6 months    ki1114097-CMIN             BRAZIL                         Female               NA                0.0806452   0.0125815   0.1487088
0-6 months    ki1114097-CMIN             BRAZIL                         Male                 NA                0.1754386   0.0762830   0.2745942
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.1395349   0.1082920   0.1707777
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.1626016   0.1299790   0.1952243
0-6 months    ki1114097-CMIN             PERU                           Female               NA                0.1076923   0.0739661   0.1414185
0-6 months    ki1114097-CMIN             PERU                           Male                 NA                0.1470588   0.1111395   0.1829782
0-6 months    ki1114097-CONTENT          PERU                           Female               NA                0.0660377   0.0186497   0.1134257
0-6 months    ki1114097-CONTENT          PERU                           Male                 NA                0.3761468   0.2849946   0.4672990
0-6 months    ki1119695-PROBIT           BELARUS                        Female               NA                0.0268848   0.0211192   0.0326504
0-6 months    ki1119695-PROBIT           BELARUS                        Male                 NA                0.1773798   0.1547340   0.2000256
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.2368537   0.2267683   0.2469391
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.2779623   0.2676312   0.2882935
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                0.3109405   0.2711760   0.3507050
0-6 months    ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.3397548   0.3008893   0.3786203
0-6 months    ki1135781-COHORTS          INDIA                          Female               NA                0.1663793   0.1540050   0.1787537
0-6 months    ki1135781-COHORTS          INDIA                          Male                 NA                0.2053571   0.1923329   0.2183814
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.1990257   0.1783789   0.2196726
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.2745219   0.2527935   0.2962503
0-6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                0.2480620   0.1733958   0.3227282
0-6 months    ki1148112-LCNI-5           MALAWI                         Male                 NA                0.4545455   0.3727841   0.5363068
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.3926486   0.3832412   0.4020560
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.4283232   0.4183481   0.4382983
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.3302362   0.3093513   0.3511210
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.3655281   0.3443429   0.3867132


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6075472   0.5486452   0.6664491
0-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2317597   0.1774632   0.2860561
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5976096   0.5368226   0.6583966
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.3458333   0.2855320   0.4061346
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.6204620   0.5657315   0.6751926
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.5445860   0.4894148   0.5997572
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8435115   0.7994342   0.8875887
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.9249330   0.8981563   0.9517096
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6414634   0.5949863   0.6879405
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.9129288   0.8845065   0.9413510
0-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.6510791   0.5949500   0.7072083
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6914547   0.6510509   0.7318584
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8277512   0.7915095   0.8639929
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.6645469   0.6276196   0.7014742
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4342857   0.3975409   0.4710305
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4775726   0.4419904   0.5131548
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3459933   0.3269422   0.3650444
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5125214   0.4943731   0.5306698
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.5301587   0.4749558   0.5853616
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3623277   0.3130786   0.4115769
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6744186   0.6369554   0.7118819
0-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.8519856   0.8100906   0.8938805
0-24 months   ki1114097-CMIN             BRAZIL                         NA                   NA                0.3361345   0.2509023   0.4213666
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.4286662   0.4036720   0.4536605
0-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.3928956   0.3614728   0.4243183
0-24 months   ki1114097-CONTENT          PERU                           NA                   NA                0.2930233   0.2320422   0.3540043
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1674854   0.1488048   0.1861659
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3966461   0.3885633   0.4047288
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7638889   0.7413757   0.7864021
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3707699   0.3597768   0.3817630
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6863963   0.6699497   0.7028430
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6369048   0.6043650   0.6694445
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4937950   0.4859633   0.5016266
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5812201   0.5652281   0.5972122
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3547170   0.2970055   0.4124285
0-6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1931330   0.1423366   0.2439295
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3426295   0.2837999   0.4014590
0-6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1750000   0.1268279   0.2231721
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4257426   0.3699763   0.4815088
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3598726   0.3067005   0.4130447
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4122137   0.3524966   0.4719309
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5108696   0.4597270   0.5620121
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.4243902   0.3764905   0.4722900
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.7387863   0.6945010   0.7830716
0-6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.5899281   0.5320068   0.6478493
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4254902   0.3977202   0.4532601
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3894231   0.3425088   0.4363374
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3497615   0.3124631   0.3870600
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2385714   0.2069753   0.2701675
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3021108   0.2694011   0.3348205
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1949082   0.1790434   0.2107729
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.3123732   0.2940736   0.3306728
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3152542   0.2621451   0.3683634
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2774086   0.2416141   0.3132032
0-6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.5667870   0.5083276   0.6252464
0-6 months    ki1114097-CMIN             BRAZIL                         NA                   NA                0.1260504   0.0661648   0.1859360
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.1512953   0.1286749   0.1739158
0-6 months    ki1114097-CMIN             PERU                           NA                   NA                0.1287554   0.1039084   0.1536023
0-6 months    ki1114097-CONTENT          PERU                           NA                   NA                0.2232558   0.1674626   0.2790491
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0995087   0.0864641   0.1125533
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2579888   0.2507541   0.2652234
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3260073   0.2981925   0.3538222
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1864548   0.1774430   0.1954667
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2390451   0.2239262   0.2541640
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3566176   0.2995882   0.4136471
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4107840   0.4033446   0.4182233
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3477583   0.3325749   0.3629416


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            1.1791106   0.9706310    1.432369
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 Female            1.1770833   0.7339958    1.887647
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            1.1891011   0.9716475    1.455220
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 Female            1.0519751   0.7403896    1.494688
0-24 months   ki0047075b-MAL-ED          PERU                           Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           Male                 Female            1.3171053   1.0950687    1.584162
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            1.2822581   1.0442127    1.574570
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.0787396   0.9715904    1.197705
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            0.9880423   0.9324348    1.046966
0-24 months   ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1000108-IRC              INDIA                          Male                 Female            1.0914454   0.9415628    1.265187
0-24 months   ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1000109-EE               PAKISTAN                       Male                 Female            0.9987495   0.9384512    1.062922
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                 Female            1.0915469   0.9170404    1.299261
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            1.0711581   1.0191095    1.125865
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.0068562   0.9223623    1.099090
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.1266851   1.0063084    1.261462
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.1599379   0.9772228    1.376816
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.1163716   0.9614813    1.296214
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.3435842   1.2009166    1.503201
0-24 months   ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         Male                 Female            1.1412881   1.0625229    1.225892
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            1.1241830   0.9127469    1.384598
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 Female            1.3916258   1.1468171    1.688693
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            0.9924547   0.8880545    1.109128
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            1.0041214   0.9090925    1.109084
0-24 months   ki1114097-CMIN             BRAZIL                         Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1114097-CMIN             BRAZIL                         Male                 Female            1.2022161   0.7234711    1.997763
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.1744801   1.0446145    1.320491
0-24 months   ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1114097-CMIN             PERU                           Male                 Female            1.1729381   0.9976391    1.379040
0-24 months   ki1114097-CONTENT          PERU                           Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1114097-CONTENT          PERU                           Male                 Female            5.1541282   2.7669636    9.600790
0-24 months   ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Male                 Female            5.2892406   4.5253334    6.182100
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.1663611   1.1193713    1.215324
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.0231112   0.9642741    1.085538
0-24 months   ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Male                 Female            1.1319187   1.0662413    1.201642
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.0742500   1.0234581    1.127563
0-24 months   ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Male                 Female            1.2538557   1.1301213    1.391137
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.1066283   1.0784888    1.135502
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.0819360   1.0279020    1.138810
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            1.6241358   1.1593951    2.275167
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Male                 Female            1.0761905   0.6350862    1.823667
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                 Female            1.6961652   1.1957949    2.405911
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED          NEPAL                          Male                 Female            1.3750000   0.7777199    2.430985
0-6 months    ki0047075b-MAL-ED          PERU                           Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED          PERU                           Male                 Female            1.3669118   1.0414646    1.794058
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            1.4404942   1.0648710    1.948615
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            0.9224806   0.6899295    1.233417
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.2788860   1.0438889    1.566785
0-6 months    ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1000108-IRC              INDIA                          Male                 Female            1.1111111   0.8833596    1.397582
0-6 months    ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1000109-EE               PAKISTAN                       Male                 Female            1.1324098   1.0028732    1.278678
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                 Female            1.0468637   0.8594215    1.275188
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            1.1104918   0.9944836    1.240033
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.1443299   0.8996285    1.455591
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.5655120   1.2489548    1.962303
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.3465282   1.0261189    1.766987
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.1726891   0.9435572    1.457463
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.5160598   1.2820210    1.792823
0-6 months    ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         Male                 Female            1.2085049   1.0733089    1.360730
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            1.1650118   0.8316835    1.631934
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.1810488   0.9098981    1.533003
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1114097-CMIN             BANGLADESH                     Male                 Female            1.1711527   0.9448982    1.451583
0-6 months    ki1114097-CMIN             BRAZIL                         Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1114097-CMIN             BRAZIL                         Male                 Female            2.1754386   0.7877905    6.007349
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.1653117   0.8627288    1.574019
0-6 months    ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1114097-CMIN             PERU                           Male                 Female            1.3655462   0.9179573    2.031376
0-6 months    ki1114097-CONTENT          PERU                           Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1114097-CONTENT          PERU                           Male                 Female            5.6959371   2.6707256   12.147897
0-6 months    ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Male                 Female            6.5977732   5.5552521    7.835938
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.1735615   1.1090713    1.241802
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.0926683   0.9203892    1.297195
0-6 months    ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Male                 Female            1.2342709   1.1193365    1.361007
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.3793286   1.2105932    1.571583
0-6 months    ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1148112-LCNI-5           MALAWI                         Male                 Female            1.8323864   1.2904228    2.601969
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.0908563   1.0582144    1.124505
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.1068687   1.0175304    1.204051


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0487236   -0.0085895   0.1060368
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0193703   -0.0364839   0.0752244
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0468849   -0.0079449   0.1017147
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0094697   -0.0560176   0.0749570
0-24 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.0889935    0.0309248   0.1470623
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0665986    0.0121300   0.1210671
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0314814   -0.0118227   0.0747854
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0055483   -0.0322582   0.0211616
0-24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0306526   -0.0207563   0.0820615
0-24 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0005848   -0.0296860   0.0285165
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0298670   -0.0292649   0.0889990
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0257404    0.0068649   0.0446158
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0026391   -0.0312216   0.0364998
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0416513    0.0024984   0.0808042
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0336833   -0.0049596   0.0723262
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0261290   -0.0092673   0.0615253
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0512298    0.0319729   0.0704868
0-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0349095    0.0161219   0.0536971
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0301587   -0.0234831   0.0838005
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0595585    0.0178371   0.1012799
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0026647   -0.0417756   0.0364461
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0019856   -0.0459973   0.0499684
0-24 months   ki1114097-CMIN             BRAZIL                         Female               NA                 0.0296828   -0.0522106   0.1115763
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0342071    0.0093580   0.0590562
0-24 months   ki1114097-CMIN             PERU                           Female               NA                 0.0325352   -0.0002596   0.0653300
0-24 months   ki1114097-CONTENT          PERU                           Female               NA                 0.1986836    0.1373477   0.2600195
0-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.1129274    0.1030756   0.1227792
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0312671    0.0229555   0.0395786
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0092305   -0.0146751   0.0331361
0-24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0238368    0.0123890   0.0352846
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0259927    0.0084833   0.0435021
0-24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0715841    0.0391265   0.1040416
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0254046    0.0189357   0.0318735
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0228501    0.0080013   0.0376989
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0826582    0.0262464   0.1390700
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0072923   -0.0450094   0.0595941
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0817599    0.0276842   0.1358356
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0295455   -0.0222599   0.0813508
0-6 months    ki0047075b-MAL-ED          PERU                           Female               NA                 0.0690992    0.0103043   0.1278941
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0642751    0.0117111   0.1168392
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0163577   -0.0751601   0.0424448
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0622209    0.0113528   0.1130891
0-6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0243902   -0.0283523   0.0771327
0-6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0468944    0.0014347   0.0923541
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0141705   -0.0467733   0.0751142
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0240616   -0.0017474   0.0498707
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0245582   -0.0193781   0.0684945
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0804013    0.0412472   0.1195553
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0367642    0.0036839   0.0698445
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0238956   -0.0086502   0.0564413
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0403474    0.0243272   0.0563676
0-6 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.0305167    0.0115385   0.0494949
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0230464   -0.0278698   0.0739627
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0239364   -0.0133522   0.0612250
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0501203   -0.0168810   0.1171217
0-6 months    ki1114097-CMIN             BRAZIL                         Female               NA                 0.0454053   -0.0128325   0.1036430
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0117605   -0.0112809   0.0348018
0-6 months    ki1114097-CMIN             PERU                           Female               NA                 0.0210631   -0.0053397   0.0474658
0-6 months    ki1114097-CONTENT          PERU                           Female               NA                 0.1572181    0.1011447   0.2132914
0-6 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.0726239    0.0630200   0.0822278
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0211351    0.0137045   0.0285657
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0150668   -0.0140204   0.0441541
0-6 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.0200755    0.0108115   0.0293396
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0400194    0.0240748   0.0559640
0-6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.1085556    0.0490635   0.1680478
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0181354    0.0117879   0.0244828
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0175221    0.0029952   0.0320491


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0801973   -0.0197994   0.1703888
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0835792   -0.1916181   0.2952212
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0784541   -0.0186811   0.1663271
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0273823   -0.1816711   0.1994513
0-24 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.1434310    0.0428320   0.2334570
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.1222921    0.0154107   0.2175711
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0373218   -0.0157748   0.0876430
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0059986   -0.0353075   0.0224806
0-24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0477854   -0.0360227   0.1248140
0-24 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0006405   -0.0330306   0.0307340
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0458731   -0.0496536   0.1327061
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0372264    0.0095688   0.0641117
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0031883   -0.0385717   0.0432691
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0626762    0.0015717   0.1200411
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0775602   -0.0159639   0.1624751
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0547121   -0.0224764   0.1260735
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.1480659    0.0906135   0.2018886
0-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0681132    0.0306465   0.1041319
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0568862   -0.0501390   0.1530039
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.1643774    0.0571456   0.2594136
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0039511   -0.0636521   0.0523989
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0023305   -0.0556096   0.0570904
0-24 months   ki1114097-CMIN             BRAZIL                         Female               NA                 0.0883065   -0.1908807   0.3020416
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0797990    0.0198900   0.1360460
0-24 months   ki1114097-CMIN             PERU                           Female               NA                 0.0828088   -0.0046305   0.1626378
0-24 months   ki1114097-CONTENT          PERU                           Female               NA                 0.6780473    0.4525193   0.8106718
0-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.6742525    0.6303790   0.7129183
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0788286    0.0576206   0.0995594
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0120836   -0.0197232   0.0428983
0-24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0642901    0.0328930   0.0946678
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0378684    0.0119649   0.0630928
0-24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.1123937    0.0592212   0.1625609
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0514477    0.0382726   0.0644422
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0393140    0.0134402   0.0645092
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.2330257    0.0571766   0.3760766
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0377581   -0.2748669   0.2737207
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                 0.2386249    0.0646039   0.3802710
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.1688312   -0.1833938   0.4162200
0-6 months    ki0047075b-MAL-ED          PERU                           Female               NA                 0.1623028    0.0117010   0.2899552
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.1786052    0.0189682   0.3122656
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0396825   -0.1926434   0.0936605
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.1217941    0.0156623   0.2164828
0-6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0574713   -0.0754480   0.1739625
0-6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0634749   -0.0006623   0.1235013
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0240207   -0.0850061   0.1220920
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0565504   -0.0061560   0.1153487
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0630631   -0.0568914   0.1694030
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.2298745    0.1099176   0.3336647
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.1541014    0.0042632   0.2813921
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0790955   -0.0351089   0.1806996
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.2070071    0.1215899   0.2841182
0-6 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.0976930    0.0348979   0.1564023
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0731043   -0.1032475   0.2212667
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0862858   -0.0583628   0.2111649
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0884289   -0.0383448   0.1997245
0-6 months    ki1114097-CMIN             BRAZIL                         Female               NA                 0.3602151   -0.2635558   0.6760533
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0777318   -0.0875062   0.2178632
0-6 months    ki1114097-CMIN             PERU                           Female               NA                 0.1635897   -0.0664503   0.3440087
0-6 months    ki1114097-CONTENT          PERU                           Female               NA                 0.7042060    0.4313484   0.8461376
0-6 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.7298246    0.6870272   0.7667697
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0819225    0.0526982   0.1102452
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0462162   -0.0473054   0.1313866
0-6 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.1076697    0.0567457   0.1558445
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.1674135    0.0984030   0.2311417
0-6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.3044034    0.1179498   0.4514432
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0441482    0.0286109   0.0594368
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0503859    0.0076480   0.0912833

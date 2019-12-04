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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        sex       swasted   n_cell       n
----------  -------------------------  -----------------------------  -------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female          0      103     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female          1        3     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male            0      104     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male            1        5     215
Birth       ki0047075b-MAL-ED          BRAZIL                         Female          0       31      62
Birth       ki0047075b-MAL-ED          BRAZIL                         Female          1        0      62
Birth       ki0047075b-MAL-ED          BRAZIL                         Male            0       31      62
Birth       ki0047075b-MAL-ED          BRAZIL                         Male            1        0      62
Birth       ki0047075b-MAL-ED          INDIA                          Female          0       22      45
Birth       ki0047075b-MAL-ED          INDIA                          Female          1        0      45
Birth       ki0047075b-MAL-ED          INDIA                          Male            0       23      45
Birth       ki0047075b-MAL-ED          INDIA                          Male            1        0      45
Birth       ki0047075b-MAL-ED          NEPAL                          Female          0       15      26
Birth       ki0047075b-MAL-ED          NEPAL                          Female          1        1      26
Birth       ki0047075b-MAL-ED          NEPAL                          Male            0       10      26
Birth       ki0047075b-MAL-ED          NEPAL                          Male            1        0      26
Birth       ki0047075b-MAL-ED          PERU                           Female          0      112     228
Birth       ki0047075b-MAL-ED          PERU                           Female          1        0     228
Birth       ki0047075b-MAL-ED          PERU                           Male            0      116     228
Birth       ki0047075b-MAL-ED          PERU                           Male            1        0     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female          0       56     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female          1        0     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male            0       64     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male            1        0     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female          0       63     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female          1        0     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male            0       52     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male            1        0     115
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female          0       43      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female          1        0      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male            0       42      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male            1        1      86
Birth       ki1000108-IRC              INDIA                          Female          0      121     343
Birth       ki1000108-IRC              INDIA                          Female          1       27     343
Birth       ki1000108-IRC              INDIA                          Male            0      168     343
Birth       ki1000108-IRC              INDIA                          Male            1       27     343
Birth       ki1000109-EE               PAKISTAN                       Female          0       87     177
Birth       ki1000109-EE               PAKISTAN                       Female          1        1     177
Birth       ki1000109-EE               PAKISTAN                       Male            0       84     177
Birth       ki1000109-EE               PAKISTAN                       Male            1        5     177
Birth       ki1000109-ResPak           PAKISTAN                       Female          0       16      38
Birth       ki1000109-ResPak           PAKISTAN                       Female          1        0      38
Birth       ki1000109-ResPak           PAKISTAN                       Male            0       22      38
Birth       ki1000109-ResPak           PAKISTAN                       Male            1        0      38
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female          0      483    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female          1       14    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male            0      591    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male            1       15    1103
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female          0      252     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female          1       17     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     Male            0      285     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     Male            1       21     575
Birth       ki1017093b-PROVIDE         BANGLADESH                     Female          0      245     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Female          1        6     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Male            0      274     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Male            1        7     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female          0      325     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female          1       25     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Male            0      335     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Male            1       22     707
Birth       ki1101329-Keneba           GAMBIA                         Female          0      654    1466
Birth       ki1101329-Keneba           GAMBIA                         Female          1       49    1466
Birth       ki1101329-Keneba           GAMBIA                         Male            0      709    1466
Birth       ki1101329-Keneba           GAMBIA                         Male            1       54    1466
Birth       ki1113344-GMS-Nepal        NEPAL                          Female          0      283     641
Birth       ki1113344-GMS-Nepal        NEPAL                          Female          1       14     641
Birth       ki1113344-GMS-Nepal        NEPAL                          Male            0      331     641
Birth       ki1113344-GMS-Nepal        NEPAL                          Male            1       13     641
Birth       ki1114097-CMIN             BANGLADESH                     Female          0        9      19
Birth       ki1114097-CMIN             BANGLADESH                     Female          1        0      19
Birth       ki1114097-CMIN             BANGLADESH                     Male            0        9      19
Birth       ki1114097-CMIN             BANGLADESH                     Male            1        1      19
Birth       ki1114097-CONTENT          PERU                           Female          0        2       2
Birth       ki1114097-CONTENT          PERU                           Female          1        0       2
Birth       ki1114097-CONTENT          PERU                           Male            0        0       2
Birth       ki1114097-CONTENT          PERU                           Male            1        0       2
Birth       ki1119695-PROBIT           BELARUS                        Female          0     6694   13830
Birth       ki1119695-PROBIT           BELARUS                        Female          1      451   13830
Birth       ki1119695-PROBIT           BELARUS                        Male            0     6230   13830
Birth       ki1119695-PROBIT           BELARUS                        Male            1      455   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female          0     5835   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female          1      387   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male            0     6290   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male            1      405   12917
Birth       ki1135781-COHORTS          GUATEMALA                      Female          0      335     756
Birth       ki1135781-COHORTS          GUATEMALA                      Female          1       25     756
Birth       ki1135781-COHORTS          GUATEMALA                      Male            0      361     756
Birth       ki1135781-COHORTS          GUATEMALA                      Male            1       35     756
Birth       ki1135781-COHORTS          INDIA                          Female          0     2802    6193
Birth       ki1135781-COHORTS          INDIA                          Female          1      150    6193
Birth       ki1135781-COHORTS          INDIA                          Male            0     3071    6193
Birth       ki1135781-COHORTS          INDIA                          Male            1      170    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    Female          0     1306    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Female          1       54    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Male            0     1472    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Male            1       67    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female          0     8333   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female          1      191   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male            0     9332   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male            1      158   18014
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female          0     1127    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female          1       15    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male            0     1238    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male            1       16    2396
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female          0      122     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female          1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Male            0      117     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Male            1        1     241
6 months    ki0047075b-MAL-ED          BRAZIL                         Female          0      103     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Female          1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Male            0      106     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Male            1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          Female          0      127     236
6 months    ki0047075b-MAL-ED          INDIA                          Female          1        3     236
6 months    ki0047075b-MAL-ED          INDIA                          Male            0      103     236
6 months    ki0047075b-MAL-ED          INDIA                          Male            1        3     236
6 months    ki0047075b-MAL-ED          NEPAL                          Female          0      110     236
6 months    ki0047075b-MAL-ED          NEPAL                          Female          1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          Male            0      126     236
6 months    ki0047075b-MAL-ED          NEPAL                          Male            1        0     236
6 months    ki0047075b-MAL-ED          PERU                           Female          0      126     273
6 months    ki0047075b-MAL-ED          PERU                           Female          1        0     273
6 months    ki0047075b-MAL-ED          PERU                           Male            0      147     273
6 months    ki0047075b-MAL-ED          PERU                           Male            1        0     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female          0      126     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female          1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male            0      125     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male            1        3     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female          0      126     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female          1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male            0      121     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male            1        0     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female          0      181     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female          1        5     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male            0      175     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male            1        7     368
6 months    ki1000108-IRC              INDIA                          Female          0      177     408
6 months    ki1000108-IRC              INDIA                          Female          1        7     408
6 months    ki1000108-IRC              INDIA                          Male            0      209     408
6 months    ki1000108-IRC              INDIA                          Male            1       15     408
6 months    ki1000109-EE               PAKISTAN                       Female          0      177     375
6 months    ki1000109-EE               PAKISTAN                       Female          1        5     375
6 months    ki1000109-EE               PAKISTAN                       Male            0      185     375
6 months    ki1000109-EE               PAKISTAN                       Male            1        8     375
6 months    ki1000109-ResPak           PAKISTAN                       Female          0      110     239
6 months    ki1000109-ResPak           PAKISTAN                       Female          1        5     239
6 months    ki1000109-ResPak           PAKISTAN                       Male            0      120     239
6 months    ki1000109-ResPak           PAKISTAN                       Male            1        4     239
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female          0      592    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female          1       18    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male            0      699    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male            1       25    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female          0      194     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female          1        8     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male            0      167     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male            1       11     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female          0      243     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female          1        2     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male            0      288     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male            1        4     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female          0      286     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female          1        2     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male            0      312     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male            1        3     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female          0      362     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female          1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male            0      353     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male            1        0     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female          0      999    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female          1        4    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male            0     1017    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male            1        8    2028
6 months    ki1101329-Keneba           GAMBIA                         Female          0     1000    2089
6 months    ki1101329-Keneba           GAMBIA                         Female          1       11    2089
6 months    ki1101329-Keneba           GAMBIA                         Male            0     1055    2089
6 months    ki1101329-Keneba           GAMBIA                         Male            1       23    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female          0      153     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female          1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male            0      146     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male            1        0     299
6 months    ki1113344-GMS-Nepal        NEPAL                          Female          0      271     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Female          1        2     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Male            0      286     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Male            1        5     564
6 months    ki1114097-CMIN             BANGLADESH                     Female          0      105     243
6 months    ki1114097-CMIN             BANGLADESH                     Female          1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     Male            0      133     243
6 months    ki1114097-CMIN             BANGLADESH                     Male            1        5     243
6 months    ki1114097-CONTENT          PERU                           Female          0      106     215
6 months    ki1114097-CONTENT          PERU                           Female          1        0     215
6 months    ki1114097-CONTENT          PERU                           Male            0      109     215
6 months    ki1114097-CONTENT          PERU                           Male            1        0     215
6 months    ki1119695-PROBIT           BELARUS                        Female          0     8136   15758
6 months    ki1119695-PROBIT           BELARUS                        Female          1        2   15758
6 months    ki1119695-PROBIT           BELARUS                        Male            0     7606   15758
6 months    ki1119695-PROBIT           BELARUS                        Male            1       14   15758
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female          0     4110    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female          1       34    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male            0     4316    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male            1       45    8505
6 months    ki1135781-COHORTS          GUATEMALA                      Female          0      455     963
6 months    ki1135781-COHORTS          GUATEMALA                      Female          1        1     963
6 months    ki1135781-COHORTS          GUATEMALA                      Male            0      502     963
6 months    ki1135781-COHORTS          GUATEMALA                      Male            1        5     963
6 months    ki1135781-COHORTS          INDIA                          Female          0     3180    6850
6 months    ki1135781-COHORTS          INDIA                          Female          1      104    6850
6 months    ki1135781-COHORTS          INDIA                          Male            0     3453    6850
6 months    ki1135781-COHORTS          INDIA                          Male            1      113    6850
6 months    ki1135781-COHORTS          PHILIPPINES                    Female          0     1264    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Female          1       11    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Male            0     1407    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Male            1       24    2706
6 months    ki1148112-LCNI-5           MALAWI                         Female          0      420     839
6 months    ki1148112-LCNI-5           MALAWI                         Female          1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         Male            0      419     839
6 months    ki1148112-LCNI-5           MALAWI                         Male            1        0     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female          0     8138   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female          1       96   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male            0     8416   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male            1      134   16784
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female          0     2392    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female          1       16    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male            0     2408    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male            1       17    4833
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female          0      104     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female          1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male            0      108     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male            1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Female          0       78     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Female          1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Male            0       90     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Male            1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          Female          0      121     227
24 months   ki0047075b-MAL-ED          INDIA                          Female          1        1     227
24 months   ki0047075b-MAL-ED          INDIA                          Male            0      104     227
24 months   ki0047075b-MAL-ED          INDIA                          Male            1        1     227
24 months   ki0047075b-MAL-ED          NEPAL                          Female          0      106     228
24 months   ki0047075b-MAL-ED          NEPAL                          Female          1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          Male            0      122     228
24 months   ki0047075b-MAL-ED          NEPAL                          Male            1        0     228
24 months   ki0047075b-MAL-ED          PERU                           Female          0       91     201
24 months   ki0047075b-MAL-ED          PERU                           Female          1        0     201
24 months   ki0047075b-MAL-ED          PERU                           Male            0      108     201
24 months   ki0047075b-MAL-ED          PERU                           Male            1        2     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female          0      118     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female          1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male            0      120     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male            1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female          0      106     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female          1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male            0      108     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male            1        0     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female          0      186     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female          1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male            0      183     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male            1        3     372
24 months   ki1000108-IRC              INDIA                          Female          0      183     409
24 months   ki1000108-IRC              INDIA                          Female          1        2     409
24 months   ki1000108-IRC              INDIA                          Male            0      221     409
24 months   ki1000108-IRC              INDIA                          Male            1        3     409
24 months   ki1000109-EE               PAKISTAN                       Female          0       79     168
24 months   ki1000109-EE               PAKISTAN                       Female          1        1     168
24 months   ki1000109-EE               PAKISTAN                       Male            0       85     168
24 months   ki1000109-EE               PAKISTAN                       Male            1        3     168
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female          0      191     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female          1        4     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male            0      227     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male            1        6     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female          0      275     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female          1        4     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male            0      295     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male            1        5     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female          0      259     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female          1        1     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male            0      251     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male            1        3     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female          0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female          1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male            0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male            1        0       6
24 months   ki1101329-Keneba           GAMBIA                         Female          0      808    1726
24 months   ki1101329-Keneba           GAMBIA                         Female          1       15    1726
24 months   ki1101329-Keneba           GAMBIA                         Male            0      888    1726
24 months   ki1101329-Keneba           GAMBIA                         Male            1       15    1726
24 months   ki1113344-GMS-Nepal        NEPAL                          Female          0      223     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Female          1        4     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Male            0      249     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Male            1       11     487
24 months   ki1114097-CMIN             BANGLADESH                     Female          0      103     243
24 months   ki1114097-CMIN             BANGLADESH                     Female          1        1     243
24 months   ki1114097-CMIN             BANGLADESH                     Male            0      138     243
24 months   ki1114097-CMIN             BANGLADESH                     Male            1        1     243
24 months   ki1114097-CONTENT          PERU                           Female          0       83     164
24 months   ki1114097-CONTENT          PERU                           Female          1        0     164
24 months   ki1114097-CONTENT          PERU                           Male            0       81     164
24 months   ki1114097-CONTENT          PERU                           Male            1        0     164
24 months   ki1119695-PROBIT           BELARUS                        Female          0     2044    3972
24 months   ki1119695-PROBIT           BELARUS                        Female          1        3    3972
24 months   ki1119695-PROBIT           BELARUS                        Male            0     1924    3972
24 months   ki1119695-PROBIT           BELARUS                        Male            1        1    3972
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female          0      249     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female          1       14     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male            0      153     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male            1       17     433
24 months   ki1135781-COHORTS          GUATEMALA                      Female          0      514    1082
24 months   ki1135781-COHORTS          GUATEMALA                      Female          1        2    1082
24 months   ki1135781-COHORTS          GUATEMALA                      Male            0      564    1082
24 months   ki1135781-COHORTS          GUATEMALA                      Male            1        2    1082
24 months   ki1135781-COHORTS          INDIA                          Female          0     2503    5291
24 months   ki1135781-COHORTS          INDIA                          Female          1       18    5291
24 months   ki1135781-COHORTS          INDIA                          Male            0     2732    5291
24 months   ki1135781-COHORTS          INDIA                          Male            1       38    5291
24 months   ki1135781-COHORTS          PHILIPPINES                    Female          0     1151    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Female          1        7    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Male            0     1273    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Male            1       18    2449
24 months   ki1148112-LCNI-5           MALAWI                         Female          0      286     563
24 months   ki1148112-LCNI-5           MALAWI                         Female          1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         Male            0      276     563
24 months   ki1148112-LCNI-5           MALAWI                         Male            1        1     563
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female          0     4026    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female          1      126    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male            0     4242    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male            1      209    8603
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female          0     2319    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female          1       48    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male            0     2287    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male            1       81    4735


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
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/b82ebf97-c2ea-4b57-9417-ac972170a080/e93e22e0-aabb-4da2-b268-64503a5c539d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b82ebf97-c2ea-4b57-9417-ac972170a080/e93e22e0-aabb-4da2-b268-64503a5c539d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b82ebf97-c2ea-4b57-9417-ac972170a080/e93e22e0-aabb-4da2-b268-64503a5c539d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b82ebf97-c2ea-4b57-9417-ac972170a080/e93e22e0-aabb-4da2-b268-64503a5c539d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA         Female               NA                0.1824324   0.1201215   0.2447433
Birth       ki1000108-IRC              INDIA         Male                 NA                0.1384615   0.0899141   0.1870090
Birth       ki1000304b-SAS-CompFeed    INDIA         Female               NA                0.0281690   0.0109460   0.0453921
Birth       ki1000304b-SAS-CompFeed    INDIA         Male                 NA                0.0247525   0.0092283   0.0402767
Birth       ki1017093-NIH-Birth        BANGLADESH    Female               NA                0.0631970   0.0340951   0.0922990
Birth       ki1017093-NIH-Birth        BANGLADESH    Male                 NA                0.0686275   0.0402760   0.0969789
Birth       ki1017093b-PROVIDE         BANGLADESH    Female               NA                0.0239044   0.0049895   0.0428193
Birth       ki1017093b-PROVIDE         BANGLADESH    Male                 NA                0.0249110   0.0066712   0.0431509
Birth       ki1017093c-NIH-Crypto      BANGLADESH    Female               NA                0.0714286   0.0444285   0.0984287
Birth       ki1017093c-NIH-Crypto      BANGLADESH    Male                 NA                0.0616246   0.0366622   0.0865871
Birth       ki1101329-Keneba           GAMBIA        Female               NA                0.0697013   0.0508713   0.0885313
Birth       ki1101329-Keneba           GAMBIA        Male                 NA                0.0707733   0.0525708   0.0889757
Birth       ki1113344-GMS-Nepal        NEPAL         Female               NA                0.0471380   0.0230162   0.0712598
Birth       ki1113344-GMS-Nepal        NEPAL         Male                 NA                0.0377907   0.0176240   0.0579574
Birth       ki1119695-PROBIT           BELARUS       Female               NA                0.0631211   0.0321691   0.0940730
Birth       ki1119695-PROBIT           BELARUS       Male                 NA                0.0680628   0.0323942   0.1037315
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Female               NA                0.0621986   0.0561973   0.0682000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Male                 NA                0.0604929   0.0547822   0.0662036
Birth       ki1135781-COHORTS          GUATEMALA     Female               NA                0.0694444   0.0431675   0.0957213
Birth       ki1135781-COHORTS          GUATEMALA     Male                 NA                0.0883838   0.0604082   0.1163595
Birth       ki1135781-COHORTS          INDIA         Female               NA                0.0508130   0.0428900   0.0587360
Birth       ki1135781-COHORTS          INDIA         Male                 NA                0.0524529   0.0447771   0.0601288
Birth       ki1135781-COHORTS          PHILIPPINES   Female               NA                0.0397059   0.0293262   0.0500855
Birth       ki1135781-COHORTS          PHILIPPINES   Male                 NA                0.0435348   0.0333381   0.0537314
Birth       kiGH5241-JiVitA-3          BANGLADESH    Female               NA                0.0224073   0.0187074   0.0261073
Birth       kiGH5241-JiVitA-3          BANGLADESH    Male                 NA                0.0166491   0.0138481   0.0194501
Birth       kiGH5241-JiVitA-4          BANGLADESH    Female               NA                0.0131349   0.0029990   0.0232707
Birth       kiGH5241-JiVitA-4          BANGLADESH    Male                 NA                0.0127592   0.0079439   0.0175745
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Female               NA                0.0268817   0.0036065   0.0501569
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Male                 NA                0.0384615   0.0104846   0.0664385
6 months    ki1000108-IRC              INDIA         Female               NA                0.0380435   0.0103683   0.0657186
6 months    ki1000108-IRC              INDIA         Male                 NA                0.0669643   0.0341904   0.0997382
6 months    ki1000109-EE               PAKISTAN      Female               NA                0.0274725   0.0036936   0.0512515
6 months    ki1000109-EE               PAKISTAN      Male                 NA                0.0414508   0.0132914   0.0696101
6 months    ki1000304b-SAS-CompFeed    INDIA         Female               NA                0.0295082   0.0196810   0.0393354
6 months    ki1000304b-SAS-CompFeed    INDIA         Male                 NA                0.0345304   0.0178765   0.0511843
6 months    ki1000304b-SAS-FoodSuppl   INDIA         Female               NA                0.0396040   0.0126738   0.0665341
6 months    ki1000304b-SAS-FoodSuppl   INDIA         Male                 NA                0.0617978   0.0263781   0.0972175
6 months    ki1101329-Keneba           GAMBIA        Female               NA                0.0108803   0.0044841   0.0172765
6 months    ki1101329-Keneba           GAMBIA        Male                 NA                0.0213358   0.0127077   0.0299639
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Female               NA                0.0082046   0.0054580   0.0109513
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Male                 NA                0.0103187   0.0073193   0.0133182
6 months    ki1135781-COHORTS          INDIA         Female               NA                0.0316687   0.0256790   0.0376584
6 months    ki1135781-COHORTS          INDIA         Male                 NA                0.0316882   0.0259385   0.0374379
6 months    ki1135781-COHORTS          PHILIPPINES   Female               NA                0.0086275   0.0035501   0.0137048
6 months    ki1135781-COHORTS          PHILIPPINES   Male                 NA                0.0167715   0.0101169   0.0234261
6 months    kiGH5241-JiVitA-3          BANGLADESH    Female               NA                0.0116590   0.0091799   0.0141381
6 months    kiGH5241-JiVitA-3          BANGLADESH    Male                 NA                0.0156725   0.0127278   0.0186172
6 months    kiGH5241-JiVitA-4          BANGLADESH    Female               NA                0.0066445   0.0030623   0.0102267
6 months    kiGH5241-JiVitA-4          BANGLADESH    Male                 NA                0.0070103   0.0023507   0.0116699
24 months   ki1101329-Keneba           GAMBIA        Female               NA                0.0182260   0.0090843   0.0273677
24 months   ki1101329-Keneba           GAMBIA        Male                 NA                0.0166113   0.0082727   0.0249499
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Female               NA                0.0532319   0.0260688   0.0803951
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Male                 NA                0.1000000   0.0548511   0.1451489
24 months   ki1135781-COHORTS          INDIA         Female               NA                0.0071400   0.0038530   0.0104270
24 months   ki1135781-COHORTS          INDIA         Male                 NA                0.0137184   0.0093863   0.0180505
24 months   ki1135781-COHORTS          PHILIPPINES   Female               NA                0.0060449   0.0015795   0.0105103
24 months   ki1135781-COHORTS          PHILIPPINES   Male                 NA                0.0139427   0.0075454   0.0203400
24 months   kiGH5241-JiVitA-3          BANGLADESH    Female               NA                0.0303468   0.0249460   0.0357477
24 months   kiGH5241-JiVitA-3          BANGLADESH    Male                 NA                0.0469557   0.0406332   0.0532783
24 months   kiGH5241-JiVitA-4          BANGLADESH    Female               NA                0.0202788   0.0131621   0.0273956
24 months   kiGH5241-JiVitA-4          BANGLADESH    Male                 NA                0.0342061   0.0265266   0.0418855


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA         NA                   NA                0.1574344   0.1188345   0.1960344
Birth       ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0262919   0.0122874   0.0402964
Birth       ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.0660870   0.0457632   0.0864107
Birth       ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0244361   0.0113037   0.0375685
Birth       ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0664781   0.0481022   0.0848539
Birth       ki1101329-Keneba           GAMBIA        NA                   NA                0.0702592   0.0571716   0.0833469
Birth       ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.0421217   0.0265597   0.0576837
Birth       ki1119695-PROBIT           BELARUS       NA                   NA                0.0655098   0.0324802   0.0985393
Birth       ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0613145   0.0571772   0.0654519
Birth       ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0793651   0.0600839   0.0986462
Birth       ki1135781-COHORTS          INDIA         NA                   NA                0.0516712   0.0461576   0.0571849
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0417385   0.0344572   0.0490198
Birth       kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0193738   0.0169653   0.0217823
Birth       kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0129382   0.0075150   0.0183614
6 months    ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0326087   0.0144375   0.0507799
6 months    ki1000108-IRC              INDIA         NA                   NA                0.0539216   0.0319786   0.0758646
6 months    ki1000109-EE               PAKISTAN      NA                   NA                0.0346667   0.0161268   0.0532065
6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0322339   0.0235219   0.0409459
6 months    ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.0500000   0.0280580   0.0719420
6 months    ki1101329-Keneba           GAMBIA        NA                   NA                0.0162757   0.0108484   0.0217031
6 months    ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0092887   0.0072498   0.0113275
6 months    ki1135781-COHORTS          INDIA         NA                   NA                0.0316788   0.0275309   0.0358267
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0129342   0.0086762   0.0171922
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0137035   0.0116269   0.0157801
6 months    kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0068281   0.0038634   0.0097927
24 months   ki1101329-Keneba           GAMBIA        NA                   NA                0.0173812   0.0112141   0.0235484
24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0715935   0.0472820   0.0959051
24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.0105840   0.0078264   0.0133416
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0102082   0.0062264   0.0141901
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0389399   0.0346167   0.0432631
24 months   kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0272439   0.0220352   0.0324527


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA         Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA         Male                 Female            0.7589744   0.4652073   1.2382481
Birth       ki1000304b-SAS-CompFeed    INDIA         Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA         Male                 Female            0.8787129   0.4648178   1.6611592
Birth       ki1017093-NIH-Birth        BANGLADESH    Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH    Male                 Female            1.0859285   0.5849592   2.0159367
Birth       ki1017093b-PROVIDE         BANGLADESH    Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH    Male                 Female            1.0421115   0.3545805   3.0627639
Birth       ki1017093c-NIH-Crypto      BANGLADESH    Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH    Male                 Female            0.8627451   0.4957501   1.5014198
Birth       ki1101329-Keneba           GAMBIA        Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba           GAMBIA        Male                 Female            1.0153797   0.6992547   1.4744211
Birth       ki1113344-GMS-Nepal        NEPAL         Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal        NEPAL         Male                 Female            0.8017027   0.3827522   1.6792251
Birth       ki1119695-PROBIT           BELARUS       Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT           BELARUS       Male                 Female            1.0782902   0.9556141   1.2167148
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Male                 Female            0.9725759   0.8497658   1.1131347
Birth       ki1135781-COHORTS          GUATEMALA     Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA     Male                 Female            1.2727273   0.7771218   2.0844026
Birth       ki1135781-COHORTS          INDIA         Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA         Male                 Female            1.0322740   0.8335385   1.2783928
Birth       ki1135781-COHORTS          PHILIPPINES   Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES   Male                 Female            1.0964311   0.7718761   1.5574535
Birth       kiGH5241-JiVitA-3          BANGLADESH    Female               Female            1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    Male                 Female            0.7430208   0.5947270   0.9282914
Birth       kiGH5241-JiVitA-4          BANGLADESH    Female               Female            1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH    Male                 Female            0.9713982   0.4098397   2.3023988
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Male                 Female            1.4307692   0.4618005   4.4328677
6 months    ki1000108-IRC              INDIA         Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA         Male                 Female            1.7602041   0.7324610   4.2300116
6 months    ki1000109-EE               PAKISTAN      Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE               PAKISTAN      Male                 Female            1.5088083   0.5020808   4.5341359
6 months    ki1000304b-SAS-CompFeed    INDIA         Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA         Male                 Female            1.1701964   0.6021138   2.2742540
6 months    ki1000304b-SAS-FoodSuppl   INDIA         Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA         Male                 Female            1.5603933   0.6412208   3.7971743
6 months    ki1101329-Keneba           GAMBIA        Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA        Male                 Female            1.9609546   0.9606954   4.0026662
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Male                 Female            1.2576716   0.8072721   1.9593616
6 months    ki1135781-COHORTS          INDIA         Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA         Male                 Female            1.0006148   0.7699087   1.3004529
6 months    ki1135781-COHORTS          PHILIPPINES   Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   Male                 Female            1.9439680   0.9559607   3.9531036
6 months    kiGH5241-JiVitA-3          BANGLADESH    Female               Female            1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    Male                 Female            1.3442446   1.0360230   1.7441637
6 months    kiGH5241-JiVitA-4          BANGLADESH    Female               Female            1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH    Male                 Female            1.0550515   0.4514153   2.4658752
24 months   ki1101329-Keneba           GAMBIA        Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA        Male                 Female            0.9114064   0.4482567   1.8530936
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Male                 Female            1.8785714   0.9504398   3.7130503
24 months   ki1135781-COHORTS          INDIA         Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA         Male                 Female            1.9213397   1.0993985   3.3577874
24 months   ki1135781-COHORTS          PHILIPPINES   Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES   Male                 Female            2.3065173   0.9667024   5.5032677
24 months   kiGH5241-JiVitA-3          BANGLADESH    Female               Female            1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    Male                 Female            1.5473034   1.2479214   1.9185086
24 months   kiGH5241-JiVitA-4          BANGLADESH    Female               Female            1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH    Male                 Female            1.6867874   1.1105597   2.5619980


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA         Female               NA                -0.0249980   -0.0699645    0.0199684
Birth       ki1000304b-SAS-CompFeed    INDIA         Female               NA                -0.0018771   -0.0111600    0.0074058
Birth       ki1017093-NIH-Birth        BANGLADESH    Female               NA                 0.0028899   -0.0187330    0.0245129
Birth       ki1017093b-PROVIDE         BANGLADESH    Female               NA                 0.0005317   -0.0133476    0.0144110
Birth       ki1017093c-NIH-Crypto      BANGLADESH    Female               NA                -0.0049505   -0.0235217    0.0136207
Birth       ki1101329-Keneba           GAMBIA        Female               NA                 0.0005579   -0.0130729    0.0141887
Birth       ki1113344-GMS-Nepal        NEPAL         Female               NA                -0.0050164   -0.0218936    0.0118609
Birth       ki1119695-PROBIT           BELARUS       Female               NA                 0.0023887   -0.0019432    0.0067206
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Female               NA                -0.0008841   -0.0051779    0.0034097
Birth       ki1135781-COHORTS          GUATEMALA     Female               NA                 0.0099206   -0.0101951    0.0300364
Birth       ki1135781-COHORTS          INDIA         Female               NA                 0.0008582   -0.0049149    0.0066314
Birth       ki1135781-COHORTS          PHILIPPINES   Female               NA                 0.0020326   -0.0056920    0.0097573
Birth       kiGH5241-JiVitA-3          BANGLADESH    Female               NA                -0.0030335   -0.0053469   -0.0007201
Birth       kiGH5241-JiVitA-4          BANGLADESH    Female               NA                -0.0001966   -0.0060961    0.0057028
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Female               NA                 0.0057270   -0.0122814    0.0237354
6 months    ki1000108-IRC              INDIA         Female               NA                 0.0158781   -0.0077139    0.0394701
6 months    ki1000109-EE               PAKISTAN      Female               NA                 0.0071941   -0.0117878    0.0261761
6 months    ki1000304b-SAS-CompFeed    INDIA         Female               NA                 0.0027257   -0.0090250    0.0144763
6 months    ki1000304b-SAS-FoodSuppl   INDIA         Female               NA                 0.0103960   -0.0104761    0.0312682
6 months    ki1101329-Keneba           GAMBIA        Female               NA                 0.0053954   -0.0001515    0.0109424
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Female               NA                 0.0010840   -0.0010015    0.0031695
6 months    ki1135781-COHORTS          INDIA         Female               NA                 0.0000101   -0.0043121    0.0043324
6 months    ki1135781-COHORTS          PHILIPPINES   Female               NA                 0.0043068   -0.0001223    0.0087359
6 months    kiGH5241-JiVitA-3          BANGLADESH    Female               NA                 0.0020446    0.0002440    0.0038451
6 months    kiGH5241-JiVitA-4          BANGLADESH    Female               NA                 0.0001835   -0.0027424    0.0031094
24 months   ki1101329-Keneba           GAMBIA        Female               NA                -0.0008448   -0.0073184    0.0056288
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Female               NA                 0.0183616   -0.0024369    0.0391601
24 months   ki1135781-COHORTS          INDIA         Female               NA                 0.0034440    0.0005957    0.0062923
24 months   ki1135781-COHORTS          PHILIPPINES   Female               NA                 0.0041633    0.0000477    0.0082790
24 months   kiGH5241-JiVitA-3          BANGLADESH    Female               NA                 0.0085931    0.0044526    0.0127336
24 months   kiGH5241-JiVitA-4          BANGLADESH    Female               NA                 0.0069651    0.0017170    0.0122132


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA         Female               NA                -0.1587838   -0.4807551    0.0931790
Birth       ki1000304b-SAS-CompFeed    INDIA         Female               NA                -0.0713939   -0.4895273    0.2293630
Birth       ki1017093-NIH-Birth        BANGLADESH    Female               NA                 0.0437292   -0.3460671    0.3206476
Birth       ki1017093b-PROVIDE         BANGLADESH    Female               NA                 0.0217591   -0.7480517    0.4525590
Birth       ki1017093c-NIH-Crypto      BANGLADESH    Female               NA                -0.0744681   -0.3926717    0.1710310
Birth       ki1101329-Keneba           GAMBIA        Female               NA                 0.0079410   -0.2063298    0.1841526
Birth       ki1113344-GMS-Nepal        NEPAL         Female               NA                -0.1190922   -0.5977626    0.2161744
Birth       ki1119695-PROBIT           BELARUS       Female               NA                 0.0364632   -0.0238452    0.0932193
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Female               NA                -0.0144191   -0.0869158    0.0532421
Birth       ki1135781-COHORTS          GUATEMALA     Female               NA                 0.1250000   -0.1669159    0.3438902
Birth       ki1135781-COHORTS          INDIA         Female               NA                 0.0166095   -0.1016995    0.1222135
Birth       ki1135781-COHORTS          PHILIPPINES   Female               NA                 0.0486996   -0.1553838    0.2167343
Birth       kiGH5241-JiVitA-3          BANGLADESH    Female               NA                -0.1565772   -0.2791771   -0.0457277
Birth       kiGH5241-JiVitA-4          BANGLADESH    Female               NA                -0.0151969   -0.5848296    0.3496937
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Female               NA                 0.1756272   -0.5948362    0.5738807
6 months    ki1000108-IRC              INDIA         Female               NA                 0.2944664   -0.2834635    0.6121606
6 months    ki1000109-EE               PAKISTAN      Female               NA                 0.2075232   -0.5602287    0.5974825
6 months    ki1000304b-SAS-CompFeed    INDIA         Female               NA                 0.0845597   -0.3445988    0.3767427
6 months    ki1000304b-SAS-FoodSuppl   INDIA         Female               NA                 0.2079208   -0.3261206    0.5268986
6 months    ki1101329-Keneba           GAMBIA        Female               NA                 0.3315006   -0.0834585    0.5875324
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Female               NA                 0.1167037   -0.1370781    0.3138446
6 months    ki1135781-COHORTS          INDIA         Female               NA                 0.0003199   -0.1458700    0.1278590
6 months    ki1135781-COHORTS          PHILIPPINES   Female               NA                 0.3329748   -0.0853646    0.5900708
6 months    kiGH5241-JiVitA-3          BANGLADESH    Female               NA                 0.1491990    0.0098353    0.2689475
6 months    kiGH5241-JiVitA-4          BANGLADESH    Female               NA                 0.0268801   -0.5070136    0.3716299
24 months   ki1101329-Keneba           GAMBIA        Female               NA                -0.0486027   -0.4952249    0.2646139
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Female               NA                 0.2564700   -0.0816655    0.4889022
24 months   ki1135781-COHORTS          INDIA         Female               NA                 0.3253952    0.0146092    0.5381613
24 months   ki1135781-COHORTS          PHILIPPINES   Female               NA                 0.4078410   -0.1077392    0.6834523
24 months   kiGH5241-JiVitA-3          BANGLADESH    Female               NA                 0.2206755    0.1087567    0.3185400
24 months   kiGH5241-JiVitA-4          BANGLADESH    Female               NA                 0.2556568    0.0324446    0.4273745

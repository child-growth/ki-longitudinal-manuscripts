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

**Outcome Variable:** y_rate_haz

## Predictor Variables

**Intervention Variable:** birthwt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        birthwt                       n_cell      n
-------------  -------------------------  -----------------------------  ---------------------------  -------  -----
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       190    241
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   51    241
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       161    168
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    7    168
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       152    176
0-3 months     ki0047075b-MAL-ED          INDIA                          Low birthweight                   24    176
0-3 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       138    152
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight                   14    152
0-3 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight       248    264
0-3 months     ki0047075b-MAL-ED          PERU                           Low birthweight                   16    264
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       201    210
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                    9    210
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       168    178
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                   10    178
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight        77     88
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   11     88
0-3 months     ki1000108-IRC              INDIA                          Normal or high birthweight       311    373
0-3 months     ki1000108-IRC              INDIA                          Low birthweight                   62    373
0-3 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight       191    302
0-3 months     ki1000109-EE               PAKISTAN                       Low birthweight                  111    302
0-3 months     ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        27     32
0-3 months     ki1000109-ResPak           PAKISTAN                       Low birthweight                    5     32
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       310    389
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                   79    389
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       386    550
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  164    550
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       485    640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  155    640
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       549    721
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  172    721
0-3 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1058   1242
0-3 months     ki1101329-Keneba           GAMBIA                         Low birthweight                  184   1242
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       354    509
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  155    509
0-3 months     ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         8     11
0-3 months     ki1114097-CMIN             BANGLADESH                     Low birthweight                    3     11
0-3 months     ki1114097-CONTENT          PERU                           Normal or high birthweight         2      2
0-3 months     ki1114097-CONTENT          PERU                           Low birthweight                    0      2
0-3 months     ki1119695-PROBIT           BELARUS                        Normal or high birthweight      7539   7539
0-3 months     ki1119695-PROBIT           BELARUS                        Low birthweight                    0   7539
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      6936   7951
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                 1015   7951
0-3 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       307    340
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight                   33    340
0-3 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight      5126   6463
0-3 months     ki1135781-COHORTS          INDIA                          Low birthweight                 1337   6463
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight      5254   9381
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 4127   9381
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight       486    636
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                  150    636
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       179    228
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   49    228
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       198    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight                   10    208
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       190    222
3-6 months     ki0047075b-MAL-ED          INDIA                          Low birthweight                   32    222
3-6 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       207    226
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight                   19    226
3-6 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight       248    264
3-6 months     ki0047075b-MAL-ED          PERU                           Low birthweight                   16    264
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       229    242
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   13    242
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       171    180
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    9    180
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       269    307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   38    307
3-6 months     ki1000108-IRC              INDIA                          Normal or high birthweight       329    392
3-6 months     ki1000108-IRC              INDIA                          Low birthweight                   63    392
3-6 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight       178    279
3-6 months     ki1000109-EE               PAKISTAN                       Low birthweight                  101    279
3-6 months     ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        22     23
3-6 months     ki1000109-ResPak           PAKISTAN                       Low birthweight                    1     23
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       282    348
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                   66    348
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       359    505
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  146    505
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       457    598
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  141    598
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       527    695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  168    695
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1591   1646
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   55   1646
3-6 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight       813    950
3-6 months     ki1101329-Keneba           GAMBIA                         Low birthweight                  137    950
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       330    469
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  139    469
3-6 months     ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         7      9
3-6 months     ki1114097-CMIN             BANGLADESH                     Low birthweight                    2      9
3-6 months     ki1114097-CONTENT          PERU                           Normal or high birthweight         2      2
3-6 months     ki1114097-CONTENT          PERU                           Low birthweight                    0      2
3-6 months     ki1119695-PROBIT           BELARUS                        Normal or high birthweight      6696   6696
3-6 months     ki1119695-PROBIT           BELARUS                        Low birthweight                    0   6696
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      5389   6157
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                  768   6157
3-6 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       305    339
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight                   34    339
3-6 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight      4767   5975
3-6 months     ki1135781-COHORTS          INDIA                          Low birthweight                 1208   5975
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight      3066   5301
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 2235   5301
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight       321    414
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                   93    414
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       177    222
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   45    222
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       188    198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight                   10    198
6-9 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       189    222
6-9 months     ki0047075b-MAL-ED          INDIA                          Low birthweight                   33    222
6-9 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       205    223
6-9 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight                   18    223
6-9 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight       227    242
6-9 months     ki0047075b-MAL-ED          PERU                           Low birthweight                   15    242
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       218    230
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   12    230
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       163    171
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8    171
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       274    313
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   39    313
6-9 months     ki1000108-IRC              INDIA                          Normal or high birthweight       335    401
6-9 months     ki1000108-IRC              INDIA                          Low birthweight                   66    401
6-9 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight       202    303
6-9 months     ki1000109-EE               PAKISTAN                       Low birthweight                  101    303
6-9 months     ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        20     20
6-9 months     ki1000109-ResPak           PAKISTAN                       Low birthweight                    0     20
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       282    350
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                   68    350
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       337    480
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  143    480
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       433    565
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  132    565
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       529    688
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  159    688
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1433   1474
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   41   1474
6-9 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight       496    572
6-9 months     ki1101329-Keneba           GAMBIA                         Low birthweight                   76    572
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       343    480
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  137    480
6-9 months     ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         6      8
6-9 months     ki1114097-CMIN             BANGLADESH                     Low birthweight                    2      8
6-9 months     ki1114097-CONTENT          PERU                           Normal or high birthweight         2      2
6-9 months     ki1114097-CONTENT          PERU                           Low birthweight                    0      2
6-9 months     ki1119695-PROBIT           BELARUS                        Normal or high birthweight      6262   6262
6-9 months     ki1119695-PROBIT           BELARUS                        Low birthweight                    0   6262
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      5192   5910
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                  718   5910
6-9 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       284    323
6-9 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight                   39    323
6-9 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight      4327   5388
6-9 months     ki1135781-COHORTS          INDIA                          Low birthweight                 1061   5388
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight       532    677
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                  145    677
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       176    223
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   47    223
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       184    194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                   10    194
9-12 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       186    218
9-12 months    ki0047075b-MAL-ED          INDIA                          Low birthweight                   32    218
9-12 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       205    223
9-12 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight                   18    223
9-12 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight       218    232
9-12 months    ki0047075b-MAL-ED          PERU                           Low birthweight                   14    232
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       218    232
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   14    232
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       161    169
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8    169
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       280    317
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   37    317
9-12 months    ki1000108-IRC              INDIA                          Normal or high birthweight       329    394
9-12 months    ki1000108-IRC              INDIA                          Low birthweight                   65    394
9-12 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight       217    325
9-12 months    ki1000109-EE               PAKISTAN                       Low birthweight                  108    325
9-12 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        19     21
9-12 months    ki1000109-ResPak           PAKISTAN                       Low birthweight                    2     21
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       294    371
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                   77    371
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       324    466
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  142    466
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       430    566
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  136    566
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       515    674
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  159    674
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1041   1071
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   30   1071
9-12 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight       496    567
9-12 months    ki1101329-Keneba           GAMBIA                         Low birthweight                   71    567
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       330    468
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  138    468
9-12 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         5      7
9-12 months    ki1114097-CMIN             BANGLADESH                     Low birthweight                    2      7
9-12 months    ki1114097-CONTENT          PERU                           Normal or high birthweight         2      2
9-12 months    ki1114097-CONTENT          PERU                           Low birthweight                    0      2
9-12 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight      6264   6264
9-12 months    ki1119695-PROBIT           BELARUS                        Low birthweight                    0   6264
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      5197   5914
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                  717   5914
9-12 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       304    344
9-12 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight                   40    344
9-12 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight      3737   4624
9-12 months    ki1135781-COHORTS          INDIA                          Low birthweight                  887   4624
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight       563    734
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                  171    734
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       164    210
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   46    210
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       174    184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                   10    184
12-15 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       185    217
12-15 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                   32    217
12-15 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       206    224
12-15 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                   18    224
12-15 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight       209    222
12-15 months   ki0047075b-MAL-ED          PERU                           Low birthweight                   13    222
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       215    227
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   12    227
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       161    169
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8    169
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       290    329
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   39    329
12-15 months   ki1000108-IRC              INDIA                          Normal or high birthweight       320    384
12-15 months   ki1000108-IRC              INDIA                          Low birthweight                   64    384
12-15 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight       195    296
12-15 months   ki1000109-EE               PAKISTAN                       Low birthweight                  101    296
12-15 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        12     14
12-15 months   ki1000109-ResPak           PAKISTAN                       Low birthweight                    2     14
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       295    376
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                   81    376
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       312    445
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  133    445
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       412    532
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  120    532
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       504    660
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  156    660
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       763    786
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   23    786
12-15 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight       764    884
12-15 months   ki1101329-Keneba           GAMBIA                         Low birthweight                  120    884
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       324    468
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  144    468
12-15 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         6      7
12-15 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                    1      7
12-15 months   ki1114097-CONTENT          PERU                           Normal or high birthweight         2      2
12-15 months   ki1114097-CONTENT          PERU                           Low birthweight                    0      2
12-15 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight       283    283
12-15 months   ki1119695-PROBIT           BELARUS                        Low birthweight                    0    283
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      2205   2538
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                  333   2538
12-15 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       264    299
12-15 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                   35    299
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight       551    741
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                  190    741
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       163    210
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   47    210
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       168    175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    7    175
15-18 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       184    217
15-18 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                   33    217
15-18 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       202    220
15-18 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                   18    220
15-18 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight       197    211
15-18 months   ki0047075b-MAL-ED          PERU                           Low birthweight                   14    211
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       213    224
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   11    224
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       155    163
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8    163
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       282    321
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   39    321
15-18 months   ki1000108-IRC              INDIA                          Normal or high birthweight       315    376
15-18 months   ki1000108-IRC              INDIA                          Low birthweight                   61    376
15-18 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight       184    278
15-18 months   ki1000109-EE               PAKISTAN                       Low birthweight                   94    278
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       284    361
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                   77    361
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       302    432
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  130    432
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       407    528
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  121    528
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       459    604
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  145    604
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       640    658
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   18    658
15-18 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight       766    881
15-18 months   ki1101329-Keneba           GAMBIA                         Low birthweight                  115    881
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       336    480
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  144    480
15-18 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         5      6
15-18 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                    1      6
15-18 months   ki1114097-CONTENT          PERU                           Normal or high birthweight         2      2
15-18 months   ki1114097-CONTENT          PERU                           Low birthweight                    0      2
15-18 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight        37     37
15-18 months   ki1119695-PROBIT           BELARUS                        Low birthweight                    0     37
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      1763   2031
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                  268   2031
15-18 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       237    272
15-18 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                   35    272
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight       570    757
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                  187    757
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       162    207
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   45    207
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       160    167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    7    167
18-21 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       184    217
18-21 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                   33    217
18-21 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       202    220
18-21 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                   18    220
18-21 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight       188    200
18-21 months   ki0047075b-MAL-ED          PERU                           Low birthweight                   12    200
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       219    232
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   13    232
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       147    155
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8    155
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       267    305
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   38    305
18-21 months   ki1000108-IRC              INDIA                          Normal or high birthweight       312    374
18-21 months   ki1000108-IRC              INDIA                          Low birthweight                   62    374
18-21 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight       179    254
18-21 months   ki1000109-EE               PAKISTAN                       Low birthweight                   75    254
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       283    407
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  124    407
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       411    541
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  130    541
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       411    546
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  135    546
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         9      9
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0      9
18-21 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight       748    864
18-21 months   ki1101329-Keneba           GAMBIA                         Low birthweight                  116    864
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       315    445
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  130    445
18-21 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         6      7
18-21 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                    1      7
18-21 months   ki1114097-CONTENT          PERU                           Normal or high birthweight         2      2
18-21 months   ki1114097-CONTENT          PERU                           Low birthweight                    0      2
18-21 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight        23     23
18-21 months   ki1119695-PROBIT           BELARUS                        Low birthweight                    0     23
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      1404   1591
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                  187   1591
18-21 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       228    263
18-21 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                   35    263
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       160    205
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   45    205
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       157    165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    8    165
21-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       184    217
21-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                   33    217
21-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       202    220
21-24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                   18    220
21-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight       177    187
21-24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                   10    187
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       221    234
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   13    234
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       147    155
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8    155
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       272    308
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   36    308
21-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight       318    384
21-24 months   ki1000108-IRC              INDIA                          Low birthweight                   66    384
21-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight        68    106
21-24 months   ki1000109-EE               PAKISTAN                       Low birthweight                   38    106
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       276    396
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  120    396
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       355    471
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  116    471
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       368    490
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  122    490
21-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight       671    781
21-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                  110    781
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       252    341
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                   89    341
21-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         1      1
21-24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                    0      1
21-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight        32     32
21-24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                    0     32
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      1024   1164
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                  140   1164
21-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       242    277
21-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                   35    277


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18-21 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1119695-PROBIT, country: BELARUS

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/a80eb64a-7e6c-4297-8efa-63320fc513c0/f41b62e4-029e-40ae-b160-a30984b1bb41/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a80eb64a-7e6c-4297-8efa-63320fc513c0/f41b62e4-029e-40ae-b160-a30984b1bb41/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a80eb64a-7e6c-4297-8efa-63320fc513c0/f41b62e4-029e-40ae-b160-a30984b1bb41/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.1528684   -0.1903768   -0.1153600
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                -0.0134377   -0.0847377    0.0578622
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.1180299    0.0598237    0.1762362
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                 0.5030250    0.3948260    0.6112240
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0726941   -0.1289126   -0.0164757
0-3 months     ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                 0.0509654   -0.0668529    0.1687837
0-3 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0207873   -0.0234910    0.0650655
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                 0.3152711    0.1686954    0.4618467
0-3 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.2724436   -0.3070044   -0.2378828
0-3 months     ki0047075b-MAL-ED          PERU                           Low birthweight              NA                -0.1288218   -0.2909380    0.0332944
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.1851276   -0.2353578   -0.1348975
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                -0.0816544   -0.3099199    0.1466111
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.1615285   -0.2073467   -0.1157103
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.0004595   -0.1131906    0.1122716
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0721517   -0.1838241    0.0395207
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -0.1976467   -0.5177661    0.1224726
0-3 months     ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.2160027   -0.2766614   -0.1553439
0-3 months     ki1000108-IRC              INDIA                          Low birthweight              NA                -0.4309953   -0.5535921   -0.3083985
0-3 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.2498735   -0.3040453   -0.1957016
0-3 months     ki1000109-EE               PAKISTAN                       Low birthweight              NA                -0.1613974   -0.2292918   -0.0935029
0-3 months     ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.4606344   -0.7204747   -0.2007941
0-3 months     ki1000109-ResPak           PAKISTAN                       Low birthweight              NA                -0.2237574   -0.5399283    0.0924136
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.1198920   -0.1962236   -0.0435603
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                -0.0373700   -0.1151286    0.0403887
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.2730788   -0.3049456   -0.2412120
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                -0.1506352   -0.1983243   -0.1029460
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.2081586   -0.2283819   -0.1879353
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                -0.1250892   -0.1568797   -0.0932987
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.2419428   -0.2619210   -0.2219645
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                -0.1971652   -0.2321956   -0.1621349
0-3 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.2939678   -0.3191340   -0.2688017
0-3 months     ki1101329-Keneba           GAMBIA                         Low birthweight              NA                -0.2261018   -0.2898190   -0.1623846
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0527790   -0.0820036   -0.0235544
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                 0.0162184   -0.0317576    0.0641944
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.1358862   -0.1467398   -0.1250326
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -0.1653698   -0.1960290   -0.1347105
0-3 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.5777133   -0.6114692   -0.5439574
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                -0.4998205   -0.6030218   -0.3966191
0-3 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0814836   -0.0890431   -0.0739241
0-3 months     ki1135781-COHORTS          INDIA                          Low birthweight              NA                 0.0144650   -0.0013315    0.0302615
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0147931    0.0057268    0.0238594
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                 0.0986129    0.0887323    0.1084935
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.3951776   -0.4636590   -0.3266962
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                 0.0856509    0.0117822    0.1595195
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0373221   -0.0633532   -0.0112910
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                 0.0324996   -0.0220829    0.0870821
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0513740    0.0136690    0.0890789
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                 0.2251623    0.1313285    0.3189960
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0437497   -0.0775613   -0.0099382
3-6 months     ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                -0.0250585   -0.0847425    0.0346254
3-6 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0348783   -0.0619896   -0.0077671
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                 0.1208205    0.0273046    0.2143364
3-6 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.0170548   -0.0151985    0.0493082
3-6 months     ki0047075b-MAL-ED          PERU                           Low birthweight              NA                 0.1168690    0.0053331    0.2284050
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0087691   -0.0477461    0.0302078
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                 0.0313930   -0.1388217    0.2016077
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0817218   -0.1183295   -0.0451142
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.1055344   -0.0529042    0.2639730
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1228385   -0.1735036   -0.0721734
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                 0.0781415   -0.0478259    0.2041090
3-6 months     ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0733534   -0.1060646   -0.0406421
3-6 months     ki1000108-IRC              INDIA                          Low birthweight              NA                 0.0671632   -0.0067113    0.1410378
3-6 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0370087    0.0027007    0.0713166
3-6 months     ki1000109-EE               PAKISTAN                       Low birthweight              NA                 0.1158972    0.0719917    0.1598026
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0456964   -0.0777022   -0.0136907
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                 0.0485366   -0.0399699    0.1370430
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0579782   -0.0839748   -0.0319816
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                -0.0404231   -0.0848531    0.0040070
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0438965   -0.0613232   -0.0264699
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                 0.0279230   -0.0074285    0.0632745
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0127835   -0.0061776    0.0317446
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                 0.0706609    0.0354149    0.1059069
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0884324   -0.1054412   -0.0714236
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.0237395   -0.0636757    0.1111548
3-6 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0536034   -0.0765918   -0.0306149
3-6 months     ki1101329-Keneba           GAMBIA                         Low birthweight              NA                 0.0427176   -0.0075385    0.0929736
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.1869261   -0.2081738   -0.1656784
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                -0.1007907   -0.1362279   -0.0653534
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0165635   -0.0263477   -0.0067793
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                 0.1070844    0.0811518    0.1330169
3-6 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1460972   -0.1695875   -0.1226068
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                -0.0826410   -0.1383287   -0.0269534
3-6 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0654117   -0.0719502   -0.0588731
3-6 months     ki1135781-COHORTS          INDIA                          Low birthweight              NA                -0.0166184   -0.0297705   -0.0034663
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.0344574   -0.0431639   -0.0257509
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                 0.0444856    0.0331564    0.0558149
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0203677   -0.0546549    0.0139195
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                 0.0165212   -0.0346035    0.0676459
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0733141   -0.0920936   -0.0545346
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                -0.0623907   -0.1048475   -0.0199339
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0080511   -0.0280197    0.0441218
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                 0.0225505   -0.1061553    0.1512563
6-9 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0812462   -0.1075587   -0.0549338
6-9 months     ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                -0.0254057   -0.0682931    0.0174816
6-9 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0350252   -0.0552109   -0.0148395
6-9 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                -0.0378368   -0.1199946    0.0443211
6-9 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0320201   -0.0568659   -0.0071743
6-9 months     ki0047075b-MAL-ED          PERU                           Low birthweight              NA                -0.0983223   -0.1912988   -0.0053458
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0263689   -0.0543420    0.0016042
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                 0.1380788   -0.0249365    0.3010942
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.1096828   -0.1515950   -0.0677705
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.0192033   -0.1143770    0.0759704
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0837187   -0.1201166   -0.0473208
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -0.0696490   -0.1693376    0.0300396
6-9 months     ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0217531   -0.0463605    0.0028543
6-9 months     ki1000108-IRC              INDIA                          Low birthweight              NA                 0.0115156   -0.0326542    0.0556853
6-9 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.1006020   -0.1256714   -0.0755326
6-9 months     ki1000109-EE               PAKISTAN                       Low birthweight              NA                -0.0565389   -0.0921474   -0.0209304
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0740596   -0.0996579   -0.0484612
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                -0.1112127   -0.1291320   -0.0932934
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0651630   -0.0868614   -0.0434646
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                -0.0562975   -0.0897739   -0.0228211
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0634244   -0.0759114   -0.0509373
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                -0.0548725   -0.0766526   -0.0330923
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0286781   -0.0430674   -0.0142889
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                -0.0402991   -0.0676878   -0.0129103
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0530276   -0.0692222   -0.0368330
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.0403233   -0.1607353    0.0800887
6-9 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0023325   -0.0330364    0.0283714
6-9 months     ki1101329-Keneba           GAMBIA                         Low birthweight              NA                -0.0340040   -0.0834829    0.0154749
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0544786   -0.0714141   -0.0375431
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                -0.0161623   -0.0602689    0.0279442
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0385667   -0.0475430   -0.0295905
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                 0.0166736   -0.0065368    0.0398839
6-9 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1402277   -0.1605533   -0.1199021
6-9 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                -0.1033232   -0.1586730   -0.0479734
6-9 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.1036336   -0.1093340   -0.0979331
6-9 months     ki1135781-COHORTS          INDIA                          Low birthweight              NA                -0.0667554   -0.0784289   -0.0550818
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0527827   -0.0733109   -0.0322545
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                -0.0180812   -0.0519187    0.0157562
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0919745   -0.1101441   -0.0738049
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                -0.0667066   -0.1022132   -0.0312000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0027467   -0.0293371    0.0348305
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                 0.1081221    0.0379961    0.1782480
9-12 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0932786   -0.1116535   -0.0749038
9-12 months    ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                -0.0722882   -0.0978124   -0.0467640
9-12 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0637473   -0.0810192   -0.0464754
9-12 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                -0.0267587   -0.0950001    0.0414827
9-12 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0380651   -0.0606111   -0.0155191
9-12 months    ki0047075b-MAL-ED          PERU                           Low birthweight              NA                -0.0896916   -0.1566513   -0.0227318
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0858463   -0.1135474   -0.0581453
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                -0.0674804   -0.1859526    0.0509918
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.1482099   -0.1901023   -0.1063175
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.0765645   -0.1389312   -0.0141979
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1234519   -0.1540791   -0.0928247
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -0.0837302   -0.1601480   -0.0073125
9-12 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0410377   -0.0591939   -0.0228815
9-12 months    ki1000108-IRC              INDIA                          Low birthweight              NA                -0.0123817   -0.0607905    0.0360272
9-12 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.1023669   -0.1198475   -0.0848862
9-12 months    ki1000109-EE               PAKISTAN                       Low birthweight              NA                -0.0991260   -0.1263118   -0.0719403
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.1005409   -0.1171865   -0.0838953
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                -0.0268339   -0.0887438    0.0350761
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0489839   -0.0659976   -0.0319701
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                -0.0273570   -0.0556438    0.0009297
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0691530   -0.0818917   -0.0564142
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                -0.0437414   -0.0649245   -0.0225583
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0428042   -0.0548552   -0.0307531
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                -0.0067529   -0.0313102    0.0178044
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0665525   -0.0810377   -0.0520672
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.0197605   -0.1246044    0.0850834
9-12 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1102050   -0.1344425   -0.0859675
9-12 months    ki1101329-Keneba           GAMBIA                         Low birthweight              NA                -0.0853098   -0.1193016   -0.0513180
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0778965   -0.0909375   -0.0648554
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                -0.0849918   -0.1190538   -0.0509298
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0641864   -0.0721854   -0.0561873
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -0.0231363   -0.0437721   -0.0025004
9-12 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0871641   -0.1040023   -0.0703260
9-12 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                -0.0638916   -0.1065792   -0.0212040
9-12 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0851840   -0.0908749   -0.0794930
9-12 months    ki1135781-COHORTS          INDIA                          Low birthweight              NA                -0.0921880   -0.1039925   -0.0803836
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0623033   -0.0793155   -0.0452910
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                -0.0372304   -0.0709414   -0.0035194
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0565357   -0.0742242   -0.0388472
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                -0.0511081   -0.0845998   -0.0176164
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0024327   -0.0207382    0.0256036
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                -0.0983203   -0.1775495   -0.0190910
12-15 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0541780   -0.0705118   -0.0378442
12-15 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                -0.0734377   -0.1217846   -0.0250909
12-15 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0561134   -0.0727009   -0.0395258
12-15 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                -0.0506171   -0.0962627   -0.0049716
12-15 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0681766   -0.0865398   -0.0498134
12-15 months   ki0047075b-MAL-ED          PERU                           Low birthweight              NA                -0.0441712   -0.1238610    0.0355186
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0609125   -0.0847909   -0.0370341
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                -0.0442892   -0.1125969    0.0240184
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0608494   -0.0894695   -0.0322292
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.1596087   -0.3143813   -0.0048361
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0816777   -0.1111857   -0.0521697
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                 0.0064278   -0.0757011    0.0885568
12-15 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0428869   -0.0617146   -0.0240591
12-15 months   ki1000108-IRC              INDIA                          Low birthweight              NA                -0.0624829   -0.1013348   -0.0236310
12-15 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0069654   -0.0224732    0.0085423
12-15 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                 0.0106974   -0.0123798    0.0337746
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0698317   -0.0775085   -0.0621549
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                -0.1095834   -0.1664878   -0.0526789
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.1348421   -0.1506787   -0.1190055
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                -0.1043082   -0.1488086   -0.0598078
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0379426   -0.0495211   -0.0263641
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                -0.0511013   -0.0715513   -0.0306512
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0397847   -0.0506460   -0.0289235
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                -0.0336357   -0.0530771   -0.0141943
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0691680   -0.0831795   -0.0551566
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.0665904   -0.0869205    0.2201013
12-15 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0513316   -0.0660710   -0.0365922
12-15 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                -0.0452712   -0.0792804   -0.0112620
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0731389   -0.0845006   -0.0617771
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                -0.0516025   -0.0758296   -0.0273754
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0626986   -0.0739463   -0.0514508
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -0.0611686   -0.0918917   -0.0304454
12-15 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1143072   -0.1328537   -0.0957607
12-15 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                -0.0690398   -0.1159750   -0.0221047
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0530210   -0.0687681   -0.0372739
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                -0.0329884   -0.0536693   -0.0123075
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0478476   -0.0622852   -0.0334099
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                -0.0420862   -0.0757356   -0.0084369
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.0213753   -0.0428094    0.0000587
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                 0.0044517   -0.1089498    0.1178532
15-18 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0417004   -0.0556405   -0.0277602
15-18 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                -0.0255504   -0.0640268    0.0129260
15-18 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0556416   -0.0721512   -0.0391319
15-18 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                -0.0601150   -0.0941793   -0.0260506
15-18 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0395950   -0.0556246   -0.0235654
15-18 months   ki0047075b-MAL-ED          PERU                           Low birthweight              NA                 0.0207297   -0.0370410    0.0785003
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0296087   -0.0494471   -0.0097704
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                -0.0055948   -0.0607507    0.0495610
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0944847   -0.1207632   -0.0682063
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.0334010   -0.0448876    0.1116895
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0693627   -0.0923011   -0.0464243
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -0.0588634   -0.1570131    0.0392863
15-18 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0385503   -0.0544507   -0.0226498
15-18 months   ki1000108-IRC              INDIA                          Low birthweight              NA                -0.0302998   -0.0709809    0.0103814
15-18 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0264492   -0.0404840   -0.0124143
15-18 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                -0.0241004   -0.0431450   -0.0050557
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0101425   -0.0311236    0.0514085
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                -0.0012429   -0.0252881    0.0228023
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0649314   -0.0821127   -0.0477501
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                -0.0370210   -0.0658934   -0.0081487
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0414969   -0.0513205   -0.0316732
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                -0.0246832   -0.0435836   -0.0057827
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0209188   -0.0306601   -0.0111776
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                -0.0042089   -0.0201086    0.0116908
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0203759   -0.0359199   -0.0048319
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.0204128   -0.0864367    0.1272622
15-18 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0318353   -0.0471482   -0.0165224
15-18 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                -0.0125772   -0.0397618    0.0146074
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0822149   -0.0961496   -0.0682801
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                -0.0380240   -0.0637548   -0.0122932
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0624540   -0.0742458   -0.0506621
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -0.0609847   -0.0911342   -0.0308351
15-18 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0622490   -0.0813572   -0.0431408
15-18 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                -0.0335080   -0.0852373    0.0182213
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0375618   -0.0519636   -0.0231599
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                -0.0446136   -0.0683334   -0.0208937
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0159627   -0.0282695   -0.0036558
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                -0.0128484   -0.0435523    0.0178555
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.0200516   -0.0453345    0.0052313
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                -0.0273850   -0.1229621    0.0681920
18-21 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0064115   -0.0061630    0.0189860
18-21 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                 0.0083037   -0.0209618    0.0375692
18-21 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0292791   -0.0431071   -0.0154512
18-21 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                -0.0178342   -0.0603053    0.0246369
18-21 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0069619   -0.0227241    0.0088003
18-21 months   ki0047075b-MAL-ED          PERU                           Low birthweight              NA                -0.0159704   -0.0826645    0.0507236
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0328217   -0.0525715   -0.0130719
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                -0.0267938   -0.1115140    0.0579265
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0285962   -0.0553538   -0.0018387
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.0218471   -0.1196305    0.0759363
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0470972   -0.0710246   -0.0231698
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -0.0203579   -0.0822489    0.0415330
18-21 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0410882   -0.0557933   -0.0263831
18-21 months   ki1000108-IRC              INDIA                          Low birthweight              NA                -0.0390359   -0.0713173   -0.0067544
18-21 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0336195   -0.0451509   -0.0220881
18-21 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                -0.0407410   -0.0672972   -0.0141847
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0326515   -0.0475302   -0.0177728
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                -0.0447818   -0.0688220   -0.0207416
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0169378   -0.0262603   -0.0076153
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                 0.0080226   -0.0084100    0.0244553
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0325704   -0.0412926   -0.0238482
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                -0.0139592   -0.0324803    0.0045619
18-21 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0151066   -0.0308481    0.0006349
18-21 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                -0.0189174   -0.0476342    0.0097994
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0185500    0.0029310    0.0341690
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                 0.0084266   -0.0050096    0.0218629
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0711985   -0.0837757   -0.0586213
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -0.0548926   -0.0883695   -0.0214157
18-21 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0229726   -0.0394373   -0.0065078
18-21 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                -0.0477488   -0.0973756    0.0018780
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0220790    0.0089041    0.0352539
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                 0.0430443    0.0143429    0.0717457
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0164160   -0.0002349    0.0330669
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                 0.0178809   -0.0282567    0.0640186
21-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0312073    0.0191073    0.0433073
21-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                 0.0291808   -0.0013039    0.0596654
21-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0026216   -0.0157340    0.0104908
21-24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                 0.0384205   -0.0017521    0.0785931
21-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.0584344    0.0422415    0.0746273
21-24 months   ki0047075b-MAL-ED          PERU                           Low birthweight              NA                 0.0292879    0.0010434    0.0575323
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0438598    0.0267603    0.0609594
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                 0.0479702   -0.0373207    0.1332611
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0130770   -0.0123692    0.0385232
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.0198528   -0.0697383    0.1094440
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0130028   -0.0078427    0.0338483
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                 0.0531995   -0.0321101    0.1385092
21-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0150985   -0.0298717   -0.0003252
21-24 months   ki1000108-IRC              INDIA                          Low birthweight              NA                -0.0069671   -0.0429950    0.0290608
21-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0044099   -0.0202986    0.0114788
21-24 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                -0.0102948   -0.0306545    0.0100649
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0387802    0.0244586    0.0531019
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                 0.0413201    0.0198548    0.0627854
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0457332    0.0358532    0.0556133
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                 0.0477674    0.0299250    0.0656097
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0569344    0.0473071    0.0665618
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                 0.0642750    0.0485205    0.0800294
21-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0150856    0.0007702    0.0294010
21-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                 0.0247530   -0.0034065    0.0529125
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0391729    0.0208957    0.0574500
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                 0.0720502    0.0430373    0.1010630
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0186191    0.0052794    0.0319589
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                 0.0110535   -0.0252704    0.0473775
21-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0182274   -0.0329126   -0.0035421
21-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                 0.0079234   -0.0312870    0.0471337


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1233623   -0.1573331   -0.0893915
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1340714    0.0769051    0.1912377
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0558315   -0.1073579   -0.0043050
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0479108    0.0033823    0.0924392
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.2637392   -0.2979115   -0.2295670
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1806931   -0.2298379   -0.1315482
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1524797   -0.1965253   -0.1084341
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0878386   -0.1937874    0.0181102
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2517387   -0.3068690   -0.1966084
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.2173541   -0.2600129   -0.1746953
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.4236224   -0.6503899   -0.1968549
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.1031330   -0.1715896   -0.0346763
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.2365683   -0.2634819   -0.2096547
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2839136   -0.3073760   -0.2604512
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0317680   -0.0569509   -0.0065852
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1396500   -0.1498974   -0.1294026
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5701531   -0.6023301   -0.5379761
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0616347   -0.0685285   -0.0547409
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0516681    0.0440665    0.0592696
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.2817746   -0.3395565   -0.2239928
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0223165   -0.0461740    0.0015410
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0597292    0.0232017    0.0962566
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0410555   -0.0712575   -0.0108535
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0217886   -0.0484402    0.0048630
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0231042   -0.0080725    0.0542808
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0066117   -0.0446285    0.0314052
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0723590   -0.1085248   -0.0361933
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0507703   -0.0811159   -0.0204248
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                 0.0655669    0.0381519    0.0929818
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0278247   -0.0456975   -0.0099519
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0529028   -0.0754199   -0.0303858
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0846842   -0.1014105   -0.0679580
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0397129   -0.0607889   -0.0186369
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1613977   -0.1800128   -0.1427826
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0011401   -0.0103512    0.0080709
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1397328   -0.1616870   -0.1177787
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0555469   -0.0614231   -0.0496706
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0011735   -0.0087950    0.0064480
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0120811   -0.0412486    0.0170864
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0710999   -0.0883796   -0.0538202
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0087834   -0.0260798    0.0436466
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0729456   -0.0963830   -0.0495082
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0352521   -0.0549582   -0.0155461
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0361297   -0.0602222   -0.0120373
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0177890   -0.0460334    0.0104554
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1054498   -0.1457511   -0.0651485
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0819656   -0.1161677   -0.0477635
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0162775   -0.0381158    0.0055609
6-9 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.0859143   -0.1065467   -0.0652819
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0812779   -0.0997587   -0.0627971
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0625218   -0.0807337   -0.0443099
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0526742   -0.0687710   -0.0365775
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0065406   -0.0339788    0.0208975
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0435425   -0.0610734   -0.0260116
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0318556   -0.0402430   -0.0234683
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1357718   -0.1548970   -0.1166465
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0963715   -0.1015092   -0.0912339
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0453503   -0.0634579   -0.0272428
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0866490   -0.1028810   -0.0704169
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0081784   -0.0226414    0.0389982
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0901975   -0.1063468   -0.0740481
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0607617   -0.0776200   -0.0439035
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0411805   -0.0628061   -0.0195549
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0847380   -0.1117373   -0.0577388
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1448184   -0.1849028   -0.1047340
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1188156   -0.1473352   -0.0902961
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0363102   -0.0534781   -0.0191422
9-12 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.1012899   -0.1160503   -0.0865295
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0852432   -0.0962180   -0.0742685
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0423937   -0.0570582   -0.0277292
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0652418   -0.0796317   -0.0508518
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1070876   -0.1287238   -0.0854514
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0799887   -0.0936094   -0.0663679
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0592096   -0.0666786   -0.0517405
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0844580   -0.1001642   -0.0687519
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0865275   -0.0916546   -0.0814004
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0564620   -0.0712883   -0.0416358
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0553468   -0.0709909   -0.0397027
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0030430   -0.0256176    0.0195316
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0570181   -0.0726888   -0.0413475
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0556717   -0.0713623   -0.0399811
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0667709   -0.0846929   -0.0488488
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0600337   -0.0829414   -0.0371260
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0655244   -0.0939345   -0.0371143
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0712336   -0.0991765   -0.0432907
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0461529   -0.0631421   -0.0291637
12-15 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0009386   -0.0138727    0.0119955
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0783952   -0.0858389   -0.0709516
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.1257162   -0.1430906   -0.1083418
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0651955   -0.0796086   -0.0507823
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0505089   -0.0640589   -0.0369589
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0665123   -0.0773867   -0.0556379
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0624978   -0.0730686   -0.0519271
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1090083   -0.1263597   -0.0916569
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0478845   -0.0613483   -0.0344207
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0465581   -0.0600639   -0.0330524
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0203422   -0.0414264    0.0007419
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0392444   -0.0524562   -0.0260326
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0560076   -0.0714213   -0.0405938
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0355924   -0.0511744   -0.0200104
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0284295   -0.0474993   -0.0093597
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0882081   -0.1138460   -0.0625703
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0680871   -0.0915055   -0.0446686
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0372117   -0.0520811   -0.0223423
15-18 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0256550   -0.0369587   -0.0143512
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                 0.0077140   -0.0225531    0.0379811
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0565325   -0.0714057   -0.0416592
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0192601   -0.0346672   -0.0038530
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0293214   -0.0431069   -0.0155360
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0689576   -0.0815283   -0.0563869
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0622601   -0.0732419   -0.0512783
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0585507   -0.0765180   -0.0405834
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0393038   -0.0522976   -0.0263099
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0152856   -0.0270052   -0.0035661
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0203590   -0.0449122    0.0041942
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0066992   -0.0048549    0.0182534
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0283427   -0.0415128   -0.0151727
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0075024   -0.0228526    0.0078478
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0324839   -0.0517228   -0.0132451
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0282479   -0.0541225   -0.0023733
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0437658   -0.0661084   -0.0214232
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0407480   -0.0541320   -0.0273640
18-21 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0357223   -0.0470222   -0.0244224
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0363472   -0.0490347   -0.0236597
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0156182   -0.0297814   -0.0014550
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0155926    0.0038526    0.0273327
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0692820   -0.0810605   -0.0575034
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0262698   -0.0420302   -0.0105094
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                 0.0266812    0.0145631    0.0387993
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0164870    0.0004862    0.0324878
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0308992    0.0196401    0.0421582
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0007364   -0.0118324    0.0133051
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0568758    0.0414457    0.0723058
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.0440882    0.0272574    0.0609190
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0134267   -0.0111463    0.0379997
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                 0.0177011   -0.0032847    0.0386869
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0137009   -0.0274163    0.0000145
21-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0065196   -0.0190677    0.0060285
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                 0.0395499    0.0276352    0.0514645
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0164472    0.0035222    0.0293722
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0477538    0.0321932    0.0633143
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.0177092    0.0051862    0.0302321
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0149231   -0.0287143   -0.0011319


### Parameter: ATE


agecat         studyid                    country                        intervention_level           baseline_level                  estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  ---------------------------  ---------------------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight     0.1394307    0.0588666    0.2199948
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight     0.3849950    0.2621334    0.5078567
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight     0.1236595   -0.0068842    0.2542033
0-3 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight     0.2944838    0.1413663    0.4476014
0-3 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight     0.1436217   -0.0221375    0.3093809
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.1034733   -0.1302535    0.3372000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.1610690    0.0393825    0.2827555
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.1254950   -0.4645335    0.2135435
0-3 months     ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.2149927   -0.3517752   -0.0782101
0-3 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0884761    0.0016185    0.1753337
0-3 months     ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       Low birthweight              Normal or high birthweight     0.2368770   -0.1723675    0.6461215
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight     0.0825220   -0.0201385    0.1851825
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.1224436    0.0650873    0.1798000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight     0.0830694    0.0453916    0.1207472
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight     0.0447775    0.0044506    0.0851044
0-3 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0678660   -0.0006410    0.1363731
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0689974    0.0128211    0.1251737
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.0294835   -0.0620072    0.0030401
0-3 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0778928   -0.0306888    0.1864745
0-3 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight     0.0959485    0.0784364    0.1134607
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0838198    0.0723015    0.0953381
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight     0.4808284    0.3815972    0.5800597
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0698217    0.0093497    0.1302937
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight     0.1737883    0.0726625    0.2749141
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight     0.0186912   -0.0499047    0.0872871
3-6 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight     0.1556988    0.0583323    0.2530653
3-6 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight     0.0998142   -0.0162915    0.2159200
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0401622   -0.1344581    0.2147824
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.1872563    0.0246435    0.3498690
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.2009801    0.0652054    0.3367547
3-6 months     ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight     0.1405166    0.0597238    0.2213094
3-6 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0788885    0.0231684    0.1346086
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight     0.0942330   -0.0153086    0.2037746
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0175551   -0.0339216    0.0690319
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight     0.0718195    0.0324061    0.1112329
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight     0.0578774    0.0178549    0.0978999
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.1121719    0.0231173    0.2012265
3-6 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0963209    0.0410567    0.1515852
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0861355    0.0448165    0.1274545
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.1236479    0.0959309    0.1513648
3-6 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0634561    0.0030168    0.1238954
3-6 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight     0.0487933    0.0341055    0.0634811
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0789430    0.0658671    0.0920190
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0368889   -0.0237471    0.0975249
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0109234   -0.0355013    0.0573480
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight     0.0144994   -0.1191653    0.1481642
6-9 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight     0.0558405    0.0055248    0.1061562
6-9 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight    -0.0028116   -0.0874128    0.0817897
6-9 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -0.0663022   -0.1625412    0.0299368
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.1644477   -0.0009503    0.3298458
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0904795   -0.0135141    0.1944731
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0140697   -0.0920558    0.1201952
6-9 months     ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight     0.0332687   -0.0172930    0.0838304
6-9 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0440631    0.0005150    0.0876113
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    -0.0371532   -0.0751434    0.0008371
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0088655   -0.0310280    0.0487590
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight     0.0085519   -0.0165540    0.0336577
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0116210   -0.0425595    0.0193176
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0127043   -0.1087918    0.1342004
6-9 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.0316715   -0.0899029    0.0265599
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0383162   -0.0089299    0.0855624
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0552403    0.0303547    0.0801259
6-9 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0369045   -0.0220593    0.0958683
6-9 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight     0.0368782    0.0238871    0.0498692
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0347015   -0.0036049    0.0730078
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0252679   -0.0146176    0.0651534
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight     0.1053754    0.0282585    0.1824923
9-12 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight     0.0209904   -0.0104598    0.0524407
9-12 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight     0.0369886   -0.0334046    0.1073819
9-12 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -0.0516265   -0.1222801    0.0190272
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0183659   -0.1033017    0.1400335
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0716454   -0.0034850    0.1467757
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0397217   -0.0426051    0.1220484
9-12 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight     0.0286560   -0.0230457    0.0803577
9-12 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0032408   -0.0290800    0.0355617
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight     0.0737070   -0.0019172    0.1493313
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0216268   -0.0113824    0.0546360
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight     0.0254116    0.0006932    0.0501300
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight     0.0360513    0.0086964    0.0634062
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0467920   -0.0590478    0.1526317
9-12 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0248952   -0.0168529    0.0666433
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.0070953   -0.0435684    0.0293778
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0410501    0.0189181    0.0631820
9-12 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0232725   -0.0226160    0.0691610
9-12 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.0070041   -0.0201087    0.0061006
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0250728   -0.0135338    0.0636795
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0054276   -0.0324482    0.0433034
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight    -0.1007530   -0.1833009   -0.0182050
12-15 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    -0.0192597   -0.0702912    0.0317717
12-15 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight     0.0054962   -0.0430699    0.0540623
12-15 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight     0.0240054   -0.0577728    0.1057836
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0166233   -0.0557377    0.0889843
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.0987593   -0.2561559    0.0586372
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0881056    0.0008365    0.1753746
12-15 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.0195960   -0.0627695    0.0235775
12-15 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0176628   -0.0101409    0.0454666
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    -0.0397517   -0.1034260    0.0239226
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0305339   -0.0167004    0.0777683
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0131587   -0.0366590    0.0103417
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight     0.0061490   -0.0161206    0.0284187
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.1357584   -0.0183906    0.2899074
12-15 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0060604   -0.0310054    0.0431263
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0215364   -0.0052226    0.0482954
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0015300   -0.0311873    0.0342473
12-15 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0452673   -0.0051993    0.0957340
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0200326   -0.0043223    0.0443875
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0057613   -0.0308546    0.0423772
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight     0.0258270   -0.0895823    0.1412364
15-18 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight     0.0161500   -0.0247739    0.0570739
15-18 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight    -0.0044734   -0.0423277    0.0333809
15-18 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight     0.0603247    0.0003714    0.1202779
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0240139   -0.0346012    0.0826290
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.1278857    0.0453045    0.2104668
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0104993   -0.0902953    0.1112938
15-18 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight     0.0082505   -0.0354277    0.0519286
15-18 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0023488   -0.0213086    0.0260062
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    -0.0113853   -0.0673122    0.0445415
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0279104   -0.0056874    0.0615082
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight     0.0168137   -0.0044873    0.0381147
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight     0.0167099   -0.0019366    0.0353565
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0407887   -0.0671855    0.1487628
15-18 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0192581   -0.0119427    0.0504588
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0441909    0.0149291    0.0734527
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0014693   -0.0309042    0.0338428
15-18 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0287410   -0.0264047    0.0838866
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0070518   -0.0331348    0.0190312
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0031143   -0.0299643    0.0361928
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight    -0.0073335   -0.1061980    0.0915311
18-21 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight     0.0018922   -0.0299604    0.0337448
18-21 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight     0.0114449   -0.0332205    0.0561104
18-21 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -0.0090085   -0.0775398    0.0595228
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0060279   -0.0809639    0.0930197
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0067492   -0.0946292    0.1081275
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0267393   -0.0396159    0.0930945
18-21 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight     0.0020523   -0.0334206    0.0375253
18-21 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0071215   -0.0360733    0.0218304
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0121303   -0.0404024    0.0161417
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight     0.0249604    0.0060675    0.0438533
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight     0.0186112   -0.0018609    0.0390833
18-21 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.0038108   -0.0365591    0.0289375
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.0101234   -0.0307264    0.0104797
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0163059   -0.0194556    0.0520675
18-21 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.0247762   -0.0770630    0.0275106
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0209653   -0.0106155    0.0525461
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight     0.0014650   -0.0475854    0.0505153
21-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    -0.0020266   -0.0348248    0.0307717
21-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight     0.0410421   -0.0012163    0.0833005
21-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -0.0291466   -0.0617036    0.0034105
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0041104   -0.0828777    0.0910985
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0067758   -0.0863589    0.0999106
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0401967   -0.0476228    0.1280163
21-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight     0.0081314   -0.0308078    0.0470705
21-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0058849   -0.0317106    0.0199408
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0025399   -0.0232646    0.0283443
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight     0.0020341   -0.0183611    0.0224294
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight     0.0073405   -0.0111227    0.0258037
21-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0096674   -0.0219219    0.0412568
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0328773   -0.0014126    0.0671672
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.0075656   -0.0462615    0.0311304
21-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0261507   -0.0157194    0.0680208


### Parameter: PAR


agecat         studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0295061    0.0109972    0.0480149
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0160415    0.0032998    0.0287831
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0168627   -0.0020165    0.0357418
0-3 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0271235    0.0075435    0.0467036
0-3 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.0087043   -0.0021619    0.0195706
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0044346   -0.0059774    0.0148466
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0090488    0.0002972    0.0178004
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0156869   -0.0589547    0.0275810
0-3 months     ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0357360   -0.0598830   -0.0115891
0-3 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0325194    0.0002332    0.0648055
0-3 months     ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   NA                 0.0370120   -0.0337380    0.1077621
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0167590   -0.0028923    0.0364102
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0365105    0.0187776    0.0542433
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0201184    0.0105852    0.0296515
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0106820    0.0009613    0.0204028
0-3 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0100542   -0.0001832    0.0202917
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0210110    0.0036829    0.0383391
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0037638   -0.0079213    0.0003937
0-3 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0075602   -0.0032607    0.0183811
0-3 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0198489    0.0161042    0.0235935
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0368750    0.0316420    0.0421080
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.1134029    0.0798368    0.1469691
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0150055    0.0014844    0.0285267
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0083552    0.0013346    0.0153758
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0026942   -0.0072313    0.0126197
3-6 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0130897    0.0031461    0.0230334
3-6 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.0060493   -0.0015533    0.0136520
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0021575   -0.0072924    0.0116073
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0093628   -0.0007294    0.0194550
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0248770    0.0065075    0.0432465
3-6 months     ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0225830    0.0086272    0.0365388
3-6 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0285582    0.0079007    0.0492157
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0178718   -0.0059828    0.0417264
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0050753   -0.0098233    0.0199739
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0169340    0.0073245    0.0265435
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0139905    0.0041419    0.0238391
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0037482    0.0006170    0.0068793
3-6 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0138905    0.0056351    0.0221458
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0255284    0.0127745    0.0382824
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0154233    0.0118186    0.0190281
3-6 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0063643   -0.0000290    0.0127576
3-6 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0098648    0.0068540    0.0128756
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0332838    0.0275308    0.0390369
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0082866   -0.0052286    0.0218019
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0022142   -0.0072140    0.0116424
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0007323   -0.0060330    0.0074976
6-9 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0083006    0.0003760    0.0162253
6-9 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0002269   -0.0070565    0.0066026
6-9 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0041096   -0.0104071    0.0021878
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0085799   -0.0012640    0.0184237
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0042330   -0.0014168    0.0098827
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0017531   -0.0114803    0.0149865
6-9 months     ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0054756   -0.0029336    0.0138849
6-9 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0146877   -0.0000162    0.0293916
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0072183   -0.0156085    0.0011718
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0026412   -0.0092493    0.0145317
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0019980   -0.0038751    0.0078710
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0026857   -0.0098451    0.0044738
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0003534   -0.0030278    0.0037345
6-9 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0042081   -0.0119952    0.0035790
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0109361   -0.0026375    0.0245097
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0067111    0.0036529    0.0097692
6-9 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0044560   -0.0027836    0.0116956
6-9 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0072620    0.0046740    0.0098500
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0074324   -0.0009201    0.0157848
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0053255   -0.0031895    0.0138405
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0054317    0.0002736    0.0105899
9-12 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0030812   -0.0016400    0.0078023
9-12 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0029856   -0.0028489    0.0088201
9-12 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0031154   -0.0076642    0.0014334
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0011083   -0.0062553    0.0084719
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0033915   -0.0008442    0.0076272
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0046363   -0.0050752    0.0143477
9-12 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0047275   -0.0038665    0.0133216
9-12 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0010770   -0.0096648    0.0118187
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0152977   -0.0012403    0.0318356
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0065901   -0.0035091    0.0166894
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0061060    0.0000995    0.0121125
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0085047    0.0019487    0.0150606
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0013107   -0.0016899    0.0043113
9-12 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0031174   -0.0021542    0.0083890
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0020922   -0.0128511    0.0086667
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0049768    0.0022719    0.0076817
9-12 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0027061   -0.0026879    0.0081001
9-12 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0013436   -0.0038586    0.0011715
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0058412   -0.0032568    0.0149392
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0011889   -0.0071133    0.0094911
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.0054757   -0.0110505    0.0000991
12-15 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0028401   -0.0104204    0.0047401
12-15 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0004417   -0.0034659    0.0043492
12-15 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.0014057   -0.0034404    0.0062518
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0008788   -0.0029771    0.0047346
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0046750   -0.0127726    0.0034226
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0104441   -0.0003502    0.0212385
12-15 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0032660   -0.0104987    0.0039667
12-15 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0060268   -0.0035083    0.0155619
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0085635   -0.0211922    0.0040652
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0091259   -0.0050511    0.0233028
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0029681   -0.0082896    0.0023533
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0014534   -0.0038141    0.0067209
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0039726   -0.0008137    0.0087589
12-15 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0008227   -0.0042107    0.0058561
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0066266   -0.0016562    0.0149093
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0002007   -0.0040920    0.0044935
12-15 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0052989   -0.0008353    0.0114330
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0051366   -0.0011587    0.0114319
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0012894   -0.0069120    0.0094909
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0010331   -0.0036441    0.0057103
15-18 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0024560   -0.0038153    0.0087273
15-18 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0003660   -0.0034674    0.0027354
15-18 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.0040026   -0.0004637    0.0084689
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0011793   -0.0017786    0.0041372
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0062766    0.0004006    0.0121526
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0012756   -0.0109762    0.0135274
15-18 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0013385   -0.0057543    0.0084313
15-18 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0007942   -0.0072062    0.0087945
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0024284   -0.0148269    0.0099700
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0083990   -0.0017835    0.0185814
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0038531   -0.0010655    0.0087718
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0040115   -0.0005010    0.0085240
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0011158   -0.0018814    0.0041130
15-18 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0025138   -0.0015814    0.0066091
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0132573    0.0042934    0.0222212
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0001939   -0.0040780    0.0044658
15-18 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0036983   -0.0034896    0.0108861
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0017420   -0.0082233    0.0047393
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0006770   -0.0065161    0.0078701
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.0003074   -0.0044574    0.0038427
18-21 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0002878   -0.0045570    0.0051326
18-21 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0009364   -0.0027416    0.0046144
18-21 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0005405   -0.0046631    0.0035821
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0003378   -0.0045400    0.0052156
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0003483   -0.0048894    0.0055861
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0033315   -0.0049951    0.0116580
18-21 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0003402   -0.0055408    0.0062213
18-21 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0021028   -0.0106609    0.0064553
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0036957   -0.0123264    0.0049350
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0059979    0.0013697    0.0106260
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0046017   -0.0005048    0.0097081
18-21 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0005116   -0.0049093    0.0038860
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0029574   -0.0089915    0.0030767
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0019165   -0.0022947    0.0061277
18-21 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0032972   -0.0103298    0.0037353
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0046021   -0.0024318    0.0116360
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0000710   -0.0023077    0.0024497
21-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0003082   -0.0052969    0.0046805
21-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0033580   -0.0004069    0.0071228
21-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0015586   -0.0035383    0.0004211
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0002284   -0.0046058    0.0050625
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0003497   -0.0044631    0.0051625
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0046983   -0.0056675    0.0150641
21-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0013976   -0.0053021    0.0080973
21-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0021097   -0.0113837    0.0071643
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0007697   -0.0070507    0.0085900
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0005010   -0.0045227    0.0055246
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0018276   -0.0027779    0.0064332
21-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0013616   -0.0030939    0.0058171
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0085809   -0.0004993    0.0176611
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0009099   -0.0055663    0.0037464
21-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0033042   -0.0020846    0.0086931

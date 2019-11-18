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

**Outcome Variable:** whz

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

agecat      studyid                    country                        birthwt                       n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ---------------------------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       177     215  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   38     215  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight        60      62  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    2      62  whz              
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight        38      45  whz              
Birth       ki0047075b-MAL-ED          INDIA                          Low birthweight                    7      45  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight        24      26  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          Low birthweight                    2      26  whz              
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight       218     228  whz              
Birth       ki0047075b-MAL-ED          PERU                           Low birthweight                   10     228  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       115     120  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                    5     120  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       113     115  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    2     115  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight        76      86  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   10      86  whz              
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight       296     343  whz              
Birth       ki1000108-IRC              INDIA                          Low birthweight                   47     343  whz              
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight       138     177  whz              
Birth       ki1000109-EE               PAKISTAN                       Low birthweight                   39     177  whz              
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        34      38  whz              
Birth       ki1000109-ResPak           PAKISTAN                       Low birthweight                    4      38  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       894    1103  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                  209    1103  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       421     575  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  154     575  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       401     532  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  131     532  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       554     707  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  153     707  whz              
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1273    1465  whz              
Birth       ki1101329-Keneba           GAMBIA                         Low birthweight                  192    1465  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       472     641  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  169     641  whz              
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight        14      19  whz              
Birth       ki1114097-CMIN             BANGLADESH                     Low birthweight                    5      19  whz              
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2  whz              
Birth       ki1114097-CONTENT          PERU                           Low birthweight                    0       2  whz              
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight     13830   13830  whz              
Birth       ki1119695-PROBIT           BELARUS                        Low birthweight                    0   13830  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight     11614   12917  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                 1303   12917  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       702     756  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      Low birthweight                   54     756  whz              
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight      5178    6193  whz              
Birth       ki1135781-COHORTS          INDIA                          Low birthweight                 1015    6193  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2688    2899  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birthweight                  211    2899  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight     12587   18014  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 5427   18014  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      1758    2396  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                  638    2396  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       188     238  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   50     238  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       199     209  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                   10     209  whz              
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       193     227  whz              
6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight                   34     227  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       210     229  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight                   19     229  whz              
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight       254     270  whz              
6 months    ki0047075b-MAL-ED          PERU                           Low birthweight                   16     270  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       238     253  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   15     253  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       177     186  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    9     186  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       325     368  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   43     368  whz              
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight       334     402  whz              
6 months    ki1000108-IRC              INDIA                          Low birthweight                   68     402  whz              
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight       243     374  whz              
6 months    ki1000109-EE               PAKISTAN                       Low birthweight                  131     374  whz              
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        29      34  whz              
6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight                    5      34  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight      1001    1324  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                  323    1324  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       367     518  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  151     518  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       460     603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  143     603  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       545     715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  170     715  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1943    2010  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   67    2010  whz              
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1146    1334  whz              
6 months    ki1101329-Keneba           GAMBIA                         Low birthweight                  188    1334  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       397     563  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  166     563  whz              
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         9      12  whz              
6 months    ki1114097-CMIN             BANGLADESH                     Low birthweight                    3      12  whz              
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2  whz              
6 months    ki1114097-CONTENT          PERU                           Low birthweight                    0       2  whz              
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight     15758   15758  whz              
6 months    ki1119695-PROBIT           BELARUS                        Low birthweight                    0   15758  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      7405    8473  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                 1068    8473  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       704     774  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight                   70     774  whz              
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight      5000    6252  whz              
6 months    ki1135781-COHORTS          INDIA                          Low birthweight                 1252    6252  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2416    2664  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight                  248    2664  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight      8338   14105  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 5767   14105  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      3005    4045  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                 1040    4045  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       165     210  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   45     210  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       161     169  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    8     169  whz              
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       185     218  whz              
24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                   33     218  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       203     221  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                   18     221  whz              
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight       187     199  whz              
24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                   12     199  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       224     237  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   13     237  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       154     162  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     162  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       329     372  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   43     372  whz              
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight       335     403  whz              
24 months   ki1000108-IRC              INDIA                          Low birthweight                   68     403  whz              
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight       101     168  whz              
24 months   ki1000109-EE               PAKISTAN                       Low birthweight                   67     168  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       286     413  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  127     413  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       440     579  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  139     579  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       388     514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  126     514  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         6       6  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0       6  whz              
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight       905    1057  whz              
24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                  152    1057  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       355     486  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  131     486  whz              
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         8      11  whz              
24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                    3      11  whz              
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2  whz              
24 months   ki1114097-CONTENT          PERU                           Low birthweight                    0       2  whz              
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight      3972    3972  whz              
24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                    0    3972  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight       337     431  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                   94     431  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       595     657  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                   62     657  whz              
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight      3911    4821  whz              
24 months   ki1135781-COHORTS          INDIA                          Low birthweight                  910    4821  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2195    2410  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                  215    2410  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight      4225    7282  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 3057    7282  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      2944    3997  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                 1053    3997  whz              


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
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/07761ddd-7b2f-47b8-93b5-9fde4cbc9eb5/4c8b272c-2437-4f0f-9364-ea535b23c793/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/07761ddd-7b2f-47b8-93b5-9fde4cbc9eb5/4c8b272c-2437-4f0f-9364-ea535b23c793/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/07761ddd-7b2f-47b8-93b5-9fde4cbc9eb5/4c8b272c-2437-4f0f-9364-ea535b23c793/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.7559698   -0.9101925   -0.6017470
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                -1.8145969   -2.0688677   -1.5603262
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.8242105   -1.1093730   -0.5390481
Birth       ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                -1.5200000   -2.2161675   -0.8238325
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.0017932   -0.1188045    0.1223908
Birth       ki0047075b-MAL-ED          PERU                           Low birthweight              NA                -1.1213127   -1.5242659   -0.7183595
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.1398261   -0.3551745    0.0755223
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                -1.4060000   -2.0013052   -0.8106947
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.2666206   -0.5641831    0.0309418
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -2.1336494   -2.8642875   -1.4030113
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.7624849   -0.9553003   -0.5696695
Birth       ki1000108-IRC              INDIA                          Low birthweight              NA                -2.5537059   -2.9689272   -2.1384846
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.1174747   -0.3161916    0.0812422
Birth       ki1000109-EE               PAKISTAN                       Low birthweight              NA                -1.1082063   -1.5133374   -0.7030752
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.3922199   -0.5400545   -0.2443853
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                -1.8427153   -1.9759872   -1.7094434
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -1.0329875   -1.1354000   -0.9305751
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                -2.2177038   -2.3631003   -2.0723073
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -1.0638699   -1.1467350   -0.9810049
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                -2.0374170   -2.1518575   -1.9229766
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.9779605   -1.0641661   -0.8917549
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                -2.2394003   -2.3898292   -2.0889714
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -1.0853982   -1.1500478   -1.0207487
Birth       ki1101329-Keneba           GAMBIA                         Low birthweight              NA                -2.2471403   -2.3919081   -2.1023725
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.7769200   -0.8692381   -0.6846019
Birth       ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                -2.0691045   -2.2037689   -1.9344402
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight   NA                -0.0585714   -0.9538408    0.8366979
Birth       ki1114097-CMIN             BANGLADESH                     Low birthweight              NA                -2.1460000   -2.9645242   -1.3274758
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.2970689   -0.3219693   -0.2721685
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -2.4714000   -2.5347406   -2.4080594
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.9551051   -1.0567277   -0.8534825
Birth       ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                -2.3484483   -2.6774932   -2.0194034
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.7515760   -0.7811451   -0.7220068
Birth       ki1135781-COHORTS          INDIA                          Low birthweight              NA                -2.1732297   -2.2358858   -2.1105735
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.6150481   -0.6605172   -0.5695791
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                -2.3757682   -2.5068470   -2.2446894
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.4381602   -0.4575764   -0.4187440
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                -1.5654631   -1.5909507   -1.5399756
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.3856859   -0.4417268   -0.3296450
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                -1.5249900   -1.5976044   -1.4523756
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0621021   -0.2134643    0.0892602
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                -0.3271174   -0.5342718   -0.1199630
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.9957138    0.8277980    1.1636295
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                 0.0570049   -0.8736527    0.9876626
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.6472499   -0.7880381   -0.5064617
6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                -1.0068774   -1.3765175   -0.6372373
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.1698219    0.0330612    0.3065826
6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                -0.1147663   -0.6736837    0.4441511
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 1.0846060    0.9596441    1.2095679
6 months    ki0047075b-MAL-ED          PERU                           Low birthweight              NA                 0.6919675   -0.0430768    1.4270118
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.5362111    0.3798965    0.6925258
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                 0.6965440   -0.0032585    1.3963465
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.5889736    0.4286505    0.7492968
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.0948148   -0.5053473    0.6949769
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.4396078   -0.5996515   -0.2795640
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -0.7459423   -1.2011232   -0.2907614
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.5365243   -0.6796239   -0.3934246
6 months    ki1000108-IRC              INDIA                          Low birthweight              NA                -0.7663689   -1.1782746   -0.3544631
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.7614816   -0.8989458   -0.6240174
6 months    ki1000109-EE               PAKISTAN                       Low birthweight              NA                -0.8046713   -1.0076890   -0.6016536
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   NA                 0.2481034   -0.2104801    0.7066870
6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight              NA                 0.0410000   -0.8343639    0.9163639
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.5669220   -0.7265622   -0.4072817
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                -0.9804730   -1.1082440   -0.8527020
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.3508633   -0.4561348   -0.2455918
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                -0.7349738   -0.9124102   -0.5575375
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0864253   -0.1800878    0.0072371
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                -0.5858522   -0.7652244   -0.4064799
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.1202681    0.0316145    0.2089217
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                -0.2598800   -0.4293521   -0.0904079
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.1012761    0.0474724    0.1550797
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.4317392   -0.7075655   -0.1559128
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1628550   -0.2302823   -0.0954276
6 months    ki1101329-Keneba           GAMBIA                         Low birthweight              NA                -0.4153891   -0.5801628   -0.2506153
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.4798408   -0.5780091   -0.3816726
6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                -0.8961770   -1.0641785   -0.7281755
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.3411951    0.3138827    0.3685075
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                 0.0805148    0.0064315    0.1545982
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.2389575    0.1567585    0.3211565
6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                -0.2049630   -0.4477470    0.0378210
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.5676968   -0.5986892   -0.5367044
6 months    ki1135781-COHORTS          INDIA                          Low birthweight              NA                -1.1970371   -1.2642391   -1.1298352
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.2601018   -0.3037590   -0.2164446
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                -0.5804402   -0.7195009   -0.4413794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.4557433   -0.4825649   -0.4289217
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                -0.8276930   -0.8589501   -0.7964359
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.2935289   -0.3435394   -0.2435184
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                -0.6205047   -0.6940003   -0.5470090
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.7076411   -0.8482456   -0.5670366
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                -1.1259681   -1.3946122   -0.8573239
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.4619462    0.2504494    0.6734429
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                 0.4762500   -0.4169100    1.3694100
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.8752980   -0.9947885   -0.7558075
24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                -1.3815134   -1.7838041   -0.9792228
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.3201519   -0.4352063   -0.2050975
24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                -0.7556580   -1.2867848   -0.2245312
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.1664244    0.0459930    0.2868558
24 months   ki0047075b-MAL-ED          PERU                           Low birthweight              NA                -1.1722499   -1.8358105   -0.5086893
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.4288443    0.3039034    0.5537853
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                 0.1719211   -0.2577570    0.6015991
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.1234416   -0.0309825    0.2778657
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.1100000   -0.6765896    0.4565896
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.4610677   -0.5669998   -0.3551357
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -1.1592063   -1.4146530   -0.9037596
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.6301076   -0.7281424   -0.5320728
24 months   ki1000108-IRC              INDIA                          Low birthweight              NA                -1.2495749   -1.4749070   -1.0242427
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.9185000   -1.1128169   -0.7241831
24 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                -1.1024020   -1.3254514   -0.8793526
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.7742150   -0.8841872   -0.6642429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                -1.2081155   -1.4135076   -1.0027234
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.7621471   -0.8568172   -0.6674770
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                -1.3448059   -1.5050653   -1.1845465
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.4859660   -0.5953683   -0.3765637
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                -1.0095874   -1.1817320   -0.8374429
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.7330713   -0.7979554   -0.6681873
24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                -1.1602170   -1.3362377   -0.9841963
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -1.0457810   -1.1486359   -0.9429261
24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                -1.3621956   -1.5302554   -1.1941357
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -1.1714743   -1.2827570   -1.0601917
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -1.2044482   -1.4194947   -0.9894017
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1562610   -0.2247177   -0.0878043
24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                -0.9204368   -1.1754529   -0.6654207
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.4983327   -0.5306433   -0.4660221
24 months   ki1135781-COHORTS          INDIA                          Low birthweight              NA                -1.0206420   -1.0861971   -0.9550870
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.5637937   -0.6021521   -0.5254352
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                -1.0792545   -1.2069444   -0.9515646
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -1.1278857   -1.1607984   -1.0949731
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                -1.5543082   -1.5906687   -1.5179477
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -1.1431983   -1.1826287   -1.1037678
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                -1.5268433   -1.5954802   -1.4582065


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9418605   -1.0869834   -0.7967375
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9324444   -1.2067907   -0.6580982
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1925833   -0.4053570    0.0201904
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                -0.3333051   -0.5209779   -0.1456323
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6700453   -0.8474950   -0.4925957
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                -1.2343618   -1.2966897   -1.1720339
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.6078947   -1.4214563    0.2056668
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5154897   -0.5413479   -0.4896314
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9847457   -1.0145305   -0.9549609
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7778272   -0.7968313   -0.7588232
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.6886269   -0.7410452   -0.6362086
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1264286   -0.2562001    0.0033429
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.6950184   -0.8251168   -0.5649199
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1468195    0.0154553    0.2781837
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0569321    0.9344468    1.1794174
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5447167    0.3920617    0.6973717
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5650627    0.4090080    0.7211174
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5865133   -0.7228579   -0.4501686
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.7738057   -0.8881828   -0.6594286
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.2176471   -0.1948962    0.6301903
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6671261   -0.8034351   -0.5308171
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4636760   -0.5549942   -0.3723578
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0834996    0.0305909    0.1364083
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1980632   -0.2602433   -0.1358831
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.6026850   -0.6889114   -0.5164586
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3088788    0.2831827    0.3345749
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.2009690    0.1225187    0.2794193
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.6934213   -0.7223635   -0.6644791
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2923874   -0.3342162   -0.2505585
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.6078114   -0.6285877   -0.5870351
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3785933   -0.4212191   -0.3359676
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8080238   -0.9295087   -0.6865389
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9353899   -1.0537553   -0.8170246
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3576697   -0.4708099   -0.2445294
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1137982   -0.0103449    0.2379412
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4054395    0.2840471    0.5268320
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.1119136   -0.0377314    0.2615586
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7385236   -0.8304949   -0.6465522
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -1.0120238   -1.1588493   -0.8651984
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9069451   -1.0069853   -0.8069049
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.7959275   -0.8565476   -0.7353073
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1336900   -1.2226955   -1.0446844
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1828306   -1.2821673   -1.0834939
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2281431   -0.2964243   -0.1598619
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.5945219   -0.6240625   -0.5649813
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6076846   -0.6447204   -0.5706489
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3060382   -1.3311265   -1.2809499
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2443883   -1.2783802   -1.2103964


### Parameter: ATE


agecat      studyid                    country                        intervention_level           baseline_level                  estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    -1.0586272   -1.3569687   -0.7602857
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    -0.6957895   -1.4480971    0.0565182
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -1.1231059   -1.5432477   -0.7029641
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -1.2661739   -1.8992325   -0.6331152
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -1.8670287   -2.6549397   -1.0791178
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    -1.7912210   -2.2500346   -1.3324075
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.9907316   -1.4424337   -0.5390296
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    -1.4504954   -1.5887584   -1.3122325
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -1.1847163   -1.3627011   -1.0067315
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.9735471   -1.1153710   -0.8317231
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    -1.2614398   -1.4349715   -1.0879081
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -1.1617420   -1.3200472   -1.0034369
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -1.2921845   -1.4555745   -1.1287946
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN             BANGLADESH                     Low birthweight              Normal or high birthweight    -2.0874286   -3.3004780   -0.8743791
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -2.1743311   -2.2424252   -2.1062370
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -1.3933432   -1.7375995   -1.0490868
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -1.4216537   -1.4909407   -1.3523667
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -1.7607201   -1.8994367   -1.6220034
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    -1.1273030   -1.1573790   -1.0972269
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    -1.1393041   -1.2292773   -1.0493308
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.2650153   -0.5202590   -0.0097716
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight    -0.9387088   -1.8863229    0.0089053
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    -0.3596275   -0.7548758    0.0356208
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight    -0.2845882   -0.8600194    0.2908429
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -0.3926385   -1.1407332    0.3554562
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.1603328   -0.5568804    0.8775460
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.4941588   -1.1153658    0.1270481
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.3063346   -0.7896238    0.1769546
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.2298446   -0.6663083    0.2066191
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0431897   -0.2887676    0.2023883
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight              Normal or high birthweight    -0.2071034   -1.1953144    0.7811075
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    -0.4135510   -0.5975079   -0.2295941
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3841105   -0.5906189   -0.1776022
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.4994269   -0.7019077   -0.2969460
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3801481   -0.5724065   -0.1878898
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.5330152   -0.8139536   -0.2520768
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.2525341   -0.4303968   -0.0746714
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.4163362   -0.6109364   -0.2217360
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.2606803   -0.3396156   -0.1817450
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.4439205   -0.7002179   -0.1876231
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.6293404   -0.7032029   -0.5554778
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -0.3203384   -0.4660747   -0.1746020
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3719497   -0.4125736   -0.3313259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3269758   -0.4139806   -0.2399710
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.4183269   -0.7216683   -0.1149856
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight     0.0143038   -0.9035554    0.9321631
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    -0.5062154   -0.9271539   -0.0852770
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight    -0.4355061   -0.9776838    0.1066716
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -1.3386743   -2.0125066   -0.6648420
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.2569233   -0.7044117    0.1905651
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.2334416   -0.8206984    0.3538153
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.6981386   -0.9748917   -0.4213854
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.6194673   -0.8659389   -0.3729956
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.1839020   -0.4815288    0.1137247
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.4339005   -0.6666119   -0.2011891
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.5826588   -0.7692232   -0.3960943
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    -0.5236214   -0.7268133   -0.3204295
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.4271457   -0.6152046   -0.2390868
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.3164146   -0.5141262   -0.1187029
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.0329739   -0.2746167    0.2086689
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.7641758   -1.0283080   -0.5000435
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.5223094   -0.5951114   -0.4495074
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -0.5154608   -0.6486986   -0.3822231
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.4264225   -0.4754301   -0.3774148
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3836451   -0.4635257   -0.3037645


### Parameter: PAR


agecat      studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.1858907   -0.2623850   -0.1093964
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.1082339   -0.2469678    0.0304999
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0538107   -0.0896965   -0.0179249
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0527572   -0.1053148   -0.0001997
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1982049   -0.3417412   -0.0546687
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.2480982   -0.3372800   -0.1589163
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.2158304   -0.3312313   -0.1004295
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.2778254   -0.3477565   -0.2078944
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.3169342   -0.3808681   -0.2530003
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.2345887   -0.2850949   -0.1840825
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.2661908   -0.3195243   -0.2128574
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1489635   -0.1772334   -0.1206937
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.3395230   -0.4020936   -0.2769525
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight   NA                -0.5493233   -1.0805682   -0.0180784
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.2184208   -0.2316251   -0.2052165
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1070378   -0.1440778   -0.0699977
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.2331697   -0.2505416   -0.2157978
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.1276769   -0.1472430   -0.1081108
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.3396671   -0.3517911   -0.3275430
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.3029409   -0.3372706   -0.2686112
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0643265   -0.1223384   -0.0063146
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.0236364   -0.0639625    0.0166897
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0477685   -0.1062562    0.0107192
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0230024   -0.0635703    0.0175655
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0276739   -0.0657893    0.0104415
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0085056   -0.0357306    0.0527418
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0239109   -0.0576301    0.0098083
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0630689   -0.1205964   -0.0055413
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0499890   -0.1214397    0.0214616
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0123241   -0.0998368    0.0751886
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.0304564   -0.1779205    0.1170078
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.1002042   -0.1516412   -0.0487671
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.1128127   -0.1746958   -0.0509296
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.1126654   -0.1630639   -0.0622668
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0905059   -0.1379642   -0.0430476
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0177765   -0.0276769   -0.0078760
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0352082   -0.0600370   -0.0103794
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.1228442   -0.1816739   -0.0640145
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0323163   -0.0424384   -0.0221942
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0379885   -0.0630271   -0.0129499
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.1257245   -0.1417960   -0.1096531
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0322856   -0.0465644   -0.0180067
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.1520681   -0.1685170   -0.1356192
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0850644   -0.1075763   -0.0625526
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.1003827   -0.1661754   -0.0345900
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0006771   -0.0427743    0.0441285
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0600919   -0.1240625    0.0038786
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0375178   -0.0793830    0.0043474
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0526262   -0.1033067   -0.0019457
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0234048   -0.0532954    0.0064857
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0115280   -0.0415623    0.0185063
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0960828   -0.1372712   -0.0548945
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.1084160   -0.1554708   -0.0613611
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0935238   -0.2156110    0.0285634
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.1327301   -0.2059270   -0.0595331
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.1307199   -0.1797358   -0.0817040
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.1243842   -0.1774269   -0.0713415
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0628561   -0.0902612   -0.0354510
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0879090   -0.1435724   -0.0322456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0113563   -0.0642104    0.0414977
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0718820   -0.1014521   -0.0423120
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0961892   -0.1109593   -0.0814191
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0438910   -0.0567354   -0.0310466
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.1781524   -0.1991809   -0.1571240
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.1011900   -0.1228540   -0.0795261

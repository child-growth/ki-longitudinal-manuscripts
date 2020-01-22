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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        birthwt                       wasted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ---------------------------  -------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight         0      157     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight         1       20     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                    0       22     215  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                    1       16     215  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight         0       59      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight         1        1      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    0        1      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    1        1      62  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight         0       36      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight         1        2      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          Low birthweight                    0        4      45  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          Low birthweight                    1        3      45  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight         0       24      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight         1        0      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          Low birthweight                    0        0      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          Low birthweight                    1        2      26  wasted           
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight         0      213     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight         1        5     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           Low birthweight                    0       10     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           Low birthweight                    1        0     228  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight         0      104     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight         1       11     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                    0        4     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                    1        1     120  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         0      113     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         1        0     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0        1     115  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    1        1     115  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight         0       71      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight         1        5      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                    0        4      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                    1        6      86  wasted           
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight         0      234     343  wasted           
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight         1       62     343  wasted           
Birth       ki1000108-IRC              INDIA                          Low birthweight                    0       17     343  wasted           
Birth       ki1000108-IRC              INDIA                          Low birthweight                    1       30     343  wasted           
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight         0      127     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight         1       11     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       Low birthweight                    0       28     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       Low birthweight                    1       11     177  wasted           
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight         0       32      38  wasted           
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight         1        2      38  wasted           
Birth       ki1000109-ResPak           PAKISTAN                       Low birthweight                    0        2      38  wasted           
Birth       ki1000109-ResPak           PAKISTAN                       Low birthweight                    1        2      38  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight         0      861    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight         1       33    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                    0      124    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                    1       85    1103  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight         0      347     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight         1       74     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                    0       60     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                    1       94     575  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight         0      351     532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight         1       50     532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                    0       64     532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                    1       67     532  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight         0      471     707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight         1       83     707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                    0       64     707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                    1       89     707  wasted           
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight         0     1015    1465  wasted           
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight         1      258    1465  wasted           
Birth       ki1101329-Keneba           GAMBIA                         Low birthweight                    0       87    1465  wasted           
Birth       ki1101329-Keneba           GAMBIA                         Low birthweight                    1      105    1465  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight         0      423     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight         1       49     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          Low birthweight                    0       86     641  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          Low birthweight                    1       83     641  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         0       13      19  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         1        1      19  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     Low birthweight                    0        2      19  wasted           
Birth       ki1114097-CMIN             BANGLADESH                     Low birthweight                    1        3      19  wasted           
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight         0        2       2  wasted           
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight         1        0       2  wasted           
Birth       ki1114097-CONTENT          PERU                           Low birthweight                    0        0       2  wasted           
Birth       ki1114097-CONTENT          PERU                           Low birthweight                    1        0       2  wasted           
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight         0    10943   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight         1     2887   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        Low birthweight                    0        0   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        Low birthweight                    1        0   13830  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight         0    10392   12917  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight         1     1222   12917  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                    0      464   12917  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                    1      839   12917  wasted           
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight         0      540     756  wasted           
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight         1      162     756  wasted           
Birth       ki1135781-COHORTS          GUATEMALA                      Low birthweight                    0       24     756  wasted           
Birth       ki1135781-COHORTS          GUATEMALA                      Low birthweight                    1       30     756  wasted           
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight         0     4632    6193  wasted           
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight         1      546    6193  wasted           
Birth       ki1135781-COHORTS          INDIA                          Low birthweight                    0      465    6193  wasted           
Birth       ki1135781-COHORTS          INDIA                          Low birthweight                    1      550    6193  wasted           
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight         0     2371    2899  wasted           
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight         1      317    2899  wasted           
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birthweight                    0       77    2899  wasted           
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birthweight                    1      134    2899  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight         0    12126   18014  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight         1      461   18014  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                    0     3915   18014  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                    1     1512   18014  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight         0     1691    2396  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight         1       67    2396  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                    0      466    2396  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                    1      172    2396  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight         0      182     238  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight         1        6     238  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                    0       48     238  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                    1        2     238  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight         0      198     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight         1        1     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    0       10     209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    1        0     209  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight         0      177     227  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight         1       16     227  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight                    0       31     227  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight                    1        3     227  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight         0      207     229  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight         1        3     229  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight                    0       19     229  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight                    1        0     229  wasted           
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight         0      254     270  wasted           
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight         1        0     270  wasted           
6 months    ki0047075b-MAL-ED          PERU                           Low birthweight                    0       16     270  wasted           
6 months    ki0047075b-MAL-ED          PERU                           Low birthweight                    1        0     270  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight         0      232     253  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight         1        6     253  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                    0       14     253  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                    1        1     253  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         0      177     186  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         1        0     186  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0        9     186  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    1        0     186  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight         0      289     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight         1       36     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                    0       33     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                    1       10     368  wasted           
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight         0      294     402  wasted           
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight         1       40     402  wasted           
6 months    ki1000108-IRC              INDIA                          Low birthweight                    0       55     402  wasted           
6 months    ki1000108-IRC              INDIA                          Low birthweight                    1       13     402  wasted           
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight         0      215     374  wasted           
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight         1       28     374  wasted           
6 months    ki1000109-EE               PAKISTAN                       Low birthweight                    0      112     374  wasted           
6 months    ki1000109-EE               PAKISTAN                       Low birthweight                    1       19     374  wasted           
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight         0       27      34  wasted           
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight         1        2      34  wasted           
6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight                    0        5      34  wasted           
6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight                    1        0      34  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight         0      893    1324  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight         1      108    1324  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                    0      267    1324  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                    1       56    1324  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight         0      349     518  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight         1       18     518  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                    0      134     518  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                    1       17     518  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight         0      450     603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight         1       10     603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                    0      128     603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                    1       15     603  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight         0      534     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight         1       11     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                    0      160     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                    1       10     715  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         0     1861    2010  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         1       82    2010  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0       63    2010  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                    1        4    2010  wasted           
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight         0     1084    1334  wasted           
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight         1       62    1334  wasted           
6 months    ki1101329-Keneba           GAMBIA                         Low birthweight                    0      176    1334  wasted           
6 months    ki1101329-Keneba           GAMBIA                         Low birthweight                    1       12    1334  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight         0      375     563  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight         1       22     563  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                    0      137     563  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                    1       29     563  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         0        8      12  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         1        1      12  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     Low birthweight                    0        3      12  wasted           
6 months    ki1114097-CMIN             BANGLADESH                     Low birthweight                    1        0      12  wasted           
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight         0        2       2  wasted           
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight         1        0       2  wasted           
6 months    ki1114097-CONTENT          PERU                           Low birthweight                    0        0       2  wasted           
6 months    ki1114097-CONTENT          PERU                           Low birthweight                    1        0       2  wasted           
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight         0    15628   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight         1      130   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        Low birthweight                    0        0   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        Low birthweight                    1        0   15758  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight         0     7188    8473  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight         1      217    8473  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                    0     1021    8473  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                    1       47    8473  wasted           
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight         0      682     774  wasted           
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight         1       22     774  wasted           
6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight                    0       67     774  wasted           
6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight                    1        3     774  wasted           
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight         0     4503    6252  wasted           
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight         1      497    6252  wasted           
6 months    ki1135781-COHORTS          INDIA                          Low birthweight                    0      947    6252  wasted           
6 months    ki1135781-COHORTS          INDIA                          Low birthweight                    1      305    6252  wasted           
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight         0     2282    2664  wasted           
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight         1      134    2664  wasted           
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight                    0      224    2664  wasted           
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight                    1       24    2664  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight         0     7829   14105  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight         1      509   14105  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                    0     5063   14105  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                    1      704   14105  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight         0     2869    4045  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight         1      136    4045  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                    0      959    4045  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                    1       81    4045  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight         0      149     210  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight         1       16     210  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                    0       41     210  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                    1        4     210  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight         0      158     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight         1        3     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    0        8     169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    1        0     169  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight         0      169     218  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight         1       16     218  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                    0       24     218  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                    1        9     218  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight         0      200     221  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight         1        3     221  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                    0       18     221  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                    1        0     221  wasted           
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight         0      185     199  wasted           
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight         1        2     199  wasted           
24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                    0       10     199  wasted           
24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                    1        2     199  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight         0      223     237  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight         1        1     237  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                    0       13     237  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                    1        0     237  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         0      150     162  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         1        4     162  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0        8     162  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    1        0     162  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight         0      313     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight         1       16     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                    0       36     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                    1        7     372  wasted           
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight         0      315     403  wasted           
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight         1       20     403  wasted           
24 months   ki1000108-IRC              INDIA                          Low birthweight                    0       57     403  wasted           
24 months   ki1000108-IRC              INDIA                          Low birthweight                    1       11     403  wasted           
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight         0       86     168  wasted           
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight         1       15     168  wasted           
24 months   ki1000109-EE               PAKISTAN                       Low birthweight                    0       52     168  wasted           
24 months   ki1000109-EE               PAKISTAN                       Low birthweight                    1       15     168  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight         0      262     413  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight         1       24     413  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                    0       98     413  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                    1       29     413  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight         0      407     579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight         1       33     579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                    0      110     579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                    1       29     579  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight         0      361     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight         1       27     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                    0      108     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                    1       18     514  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         0        6       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         1        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                    1        0       6  wasted           
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight         0      819    1057  wasted           
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight         1       86    1057  wasted           
24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                    0      126    1057  wasted           
24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                    1       26    1057  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight         0      302     486  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight         1       53     486  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                    0       94     486  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                    1       37     486  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         0        8      11  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         1        0      11  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                    0        3      11  wasted           
24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                    1        0      11  wasted           
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight         0        2       2  wasted           
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight         1        0       2  wasted           
24 months   ki1114097-CONTENT          PERU                           Low birthweight                    0        0       2  wasted           
24 months   ki1114097-CONTENT          PERU                           Low birthweight                    1        0       2  wasted           
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight         0     3928    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight         1       44    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                    0        0    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                    1        0    3972  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight         0      278     431  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight         1       59     431  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                    0       74     431  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                    1       20     431  wasted           
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight         0      578     657  wasted           
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight         1       17     657  wasted           
24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                    0       53     657  wasted           
24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                    1        9     657  wasted           
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight         0     3617    4821  wasted           
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight         1      294    4821  wasted           
24 months   ki1135781-COHORTS          INDIA                          Low birthweight                    0      766    4821  wasted           
24 months   ki1135781-COHORTS          INDIA                          Low birthweight                    1      144    4821  wasted           
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight         0     2063    2410  wasted           
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight         1      132    2410  wasted           
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                    0      183    2410  wasted           
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                    1       32    2410  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight         0     3549    7282  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight         1      676    7282  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                    0     2144    7282  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                    1      913    7282  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight         0     2444    3997  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight         1      500    3997  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                    0      744    3997  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                    1      309    3997  wasted           


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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/e2887abe-22e5-4d88-8a39-c36d4a4a2f7e/6b070d98-9d1d-44d9-bfb2-1bc4bf883643/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e2887abe-22e5-4d88-8a39-c36d4a4a2f7e/6b070d98-9d1d-44d9-bfb2-1bc4bf883643/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e2887abe-22e5-4d88-8a39-c36d4a4a2f7e/6b070d98-9d1d-44d9-bfb2-1bc4bf883643/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e2887abe-22e5-4d88-8a39-c36d4a4a2f7e/6b070d98-9d1d-44d9-bfb2-1bc4bf883643/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level           baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  ---------------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    Normal or high birthweight   NA                0.1129944   0.0662461   0.1597426
Birth       ki0047075b-MAL-ED          BANGLADESH    Low birthweight              NA                0.4210526   0.2637064   0.5783989
Birth       ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.2094595   0.1630348   0.2558841
Birth       ki1000108-IRC              INDIA         Low birthweight              NA                0.6382979   0.5007289   0.7758668
Birth       ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.0797101   0.0343935   0.1250268
Birth       ki1000109-EE               PAKISTAN      Low birthweight              NA                0.2820513   0.1404208   0.4236818
Birth       ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.0369128   0.0209631   0.0528624
Birth       ki1000304b-SAS-CompFeed    INDIA         Low birthweight              NA                0.4066986   0.3301184   0.4832788
Birth       ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.1757720   0.1393818   0.2121621
Birth       ki1017093-NIH-Birth        BANGLADESH    Low birthweight              NA                0.6103896   0.5333020   0.6874772
Birth       ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.1246883   0.0923231   0.1570535
Birth       ki1017093b-PROVIDE         BANGLADESH    Low birthweight              NA                0.5114504   0.4257708   0.5971299
Birth       ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.1498195   0.1200795   0.1795594
Birth       ki1017093c-NIH-Crypto      BANGLADESH    Low birthweight              NA                0.5816993   0.5034820   0.6599167
Birth       ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.2026709   0.1805808   0.2247609
Birth       ki1101329-Keneba           GAMBIA        Low birthweight              NA                0.5468750   0.4764383   0.6173117
Birth       ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.1038136   0.0762749   0.1313522
Birth       ki1113344-GMS-Nepal        NEPAL         Low birthweight              NA                0.4911243   0.4156940   0.5665545
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.1052178   0.0996373   0.1107984
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low birthweight              NA                0.6438987   0.6178978   0.6698996
Birth       ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.2307692   0.1995815   0.2619570
Birth       ki1135781-COHORTS          GUATEMALA     Low birthweight              NA                0.5555556   0.4229349   0.6881762
Birth       ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.1054461   0.0970801   0.1138122
Birth       ki1135781-COHORTS          INDIA         Low birthweight              NA                0.5418719   0.5112176   0.5725263
Birth       ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.1179315   0.1057368   0.1301263
Birth       ki1135781-COHORTS          PHILIPPINES   Low birthweight              NA                0.6350711   0.5701035   0.7000387
Birth       kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0366251   0.0330203   0.0402299
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low birthweight              NA                0.2786070   0.2654067   0.2918072
Birth       kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0381115   0.0255550   0.0506679
Birth       kiGH5241-JiVitA-4          BANGLADESH    Low birthweight              NA                0.2695925   0.2273302   0.3118548
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.1107692   0.0766017   0.1449368
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low birthweight              NA                0.2325581   0.1061156   0.3590007
6 months    ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.1197605   0.0848968   0.1546241
6 months    ki1000108-IRC              INDIA         Low birthweight              NA                0.1911765   0.0975974   0.2847555
6 months    ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.1152263   0.0750271   0.1554256
6 months    ki1000109-EE               PAKISTAN      Low birthweight              NA                0.1450382   0.0846560   0.2054203
6 months    ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.1078921   0.0775356   0.1382486
6 months    ki1000304b-SAS-CompFeed    INDIA         Low birthweight              NA                0.1733746   0.1394939   0.2072554
6 months    ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.0490463   0.0269298   0.0711629
6 months    ki1017093-NIH-Birth        BANGLADESH    Low birthweight              NA                0.1125828   0.0621191   0.1630465
6 months    ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.0217391   0.0084015   0.0350767
6 months    ki1017093b-PROVIDE         BANGLADESH    Low birthweight              NA                0.1048951   0.0546313   0.1551589
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.0201835   0.0083687   0.0319982
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Low birthweight              NA                0.0588235   0.0234288   0.0942183
6 months    ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0541012   0.0409990   0.0672034
6 months    ki1101329-Keneba           GAMBIA        Low birthweight              NA                0.0638298   0.0288738   0.0987857
6 months    ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.0554156   0.0328901   0.0779412
6 months    ki1113344-GMS-Nepal        NEPAL         Low birthweight              NA                0.1746988   0.1168850   0.2325126
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0293045   0.0254629   0.0331462
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low birthweight              NA                0.0440075   0.0317054   0.0563096
6 months    ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0994000   0.0911061   0.1076939
6 months    ki1135781-COHORTS          INDIA         Low birthweight              NA                0.2436102   0.2198308   0.2673896
6 months    ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0554636   0.0463352   0.0645920
6 months    ki1135781-COHORTS          PHILIPPINES   Low birthweight              NA                0.0967742   0.0599713   0.1335771
6 months    kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0610458   0.0554982   0.0665935
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low birthweight              NA                0.1220739   0.1123162   0.1318315
6 months    kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0452579   0.0337330   0.0567828
6 months    kiGH5241-JiVitA-4          BANGLADESH    Low birthweight              NA                0.0778846   0.0599451   0.0958242
24 months   ki0047075b-MAL-ED          INDIA         Normal or high birthweight   NA                0.0864865   0.0458896   0.1270833
24 months   ki0047075b-MAL-ED          INDIA         Low birthweight              NA                0.2727273   0.1204264   0.4250282
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.0486322   0.0253582   0.0719062
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low birthweight              NA                0.1627907   0.0522989   0.2732825
24 months   ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0597015   0.0342982   0.0851048
24 months   ki1000108-IRC              INDIA         Low birthweight              NA                0.1617647   0.0741337   0.2493958
24 months   ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.1485149   0.0789552   0.2180745
24 months   ki1000109-EE               PAKISTAN      Low birthweight              NA                0.2238806   0.1237701   0.3239911
24 months   ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.0839161   0.0517438   0.1160884
24 months   ki1017093-NIH-Birth        BANGLADESH    Low birthweight              NA                0.2283465   0.1552526   0.3014403
24 months   ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.0750000   0.0503681   0.0996319
24 months   ki1017093b-PROVIDE         BANGLADESH    Low birthweight              NA                0.2086331   0.1410253   0.2762409
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.0695876   0.0442446   0.0949307
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low birthweight              NA                0.1428571   0.0816977   0.2040166
24 months   ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0950276   0.0759127   0.1141425
24 months   ki1101329-Keneba           GAMBIA        Low birthweight              NA                0.1710526   0.1111618   0.2309434
24 months   ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.1492958   0.1121855   0.1864061
24 months   ki1113344-GMS-Nepal        NEPAL         Low birthweight              NA                0.2824427   0.2052719   0.3596136
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.1750742   0.1344527   0.2156957
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low birthweight              NA                0.2127660   0.1299352   0.2955967
24 months   ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0285714   0.0151749   0.0419679
24 months   ki1135781-COHORTS          GUATEMALA     Low birthweight              NA                0.1451613   0.0574106   0.2329120
24 months   ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0751726   0.0669082   0.0834370
24 months   ki1135781-COHORTS          INDIA         Low birthweight              NA                0.1582418   0.1345266   0.1819570
24 months   ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0601367   0.0501890   0.0700844
24 months   ki1135781-COHORTS          PHILIPPINES   Low birthweight              NA                0.1488372   0.1012510   0.1964234
24 months   kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.1600000   0.1473634   0.1726366
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low birthweight              NA                0.2986588   0.2815576   0.3157601
24 months   kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.1698370   0.1530938   0.1865801
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low birthweight              NA                0.2934473   0.2612571   0.3256375


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.1674419   0.1174176   0.2174661
Birth       ki1000108-IRC              INDIA         NA                   NA                0.2682216   0.2212677   0.3151755
Birth       ki1000109-EE               PAKISTAN      NA                   NA                0.1242938   0.0755526   0.1730349
Birth       ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1069810   0.0760961   0.1378659
Birth       ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.2921739   0.2549711   0.3293768
Birth       ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.2199248   0.1846953   0.2551543
Birth       ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.2432815   0.2116319   0.2749310
Birth       ki1101329-Keneba           GAMBIA        NA                   NA                0.2477816   0.2256667   0.2698964
Birth       ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.2059282   0.1745993   0.2372572
Birth       ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.1595572   0.1532418   0.1658725
Birth       ki1135781-COHORTS          GUATEMALA     NA                   NA                0.2539683   0.2229196   0.2850169
Birth       ki1135781-COHORTS          INDIA         NA                   NA                0.1769740   0.1674681   0.1864799
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.1555709   0.1423748   0.1687670
Birth       kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1095259   0.1044047   0.1146471
Birth       kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0997496   0.0843744   0.1151247
6 months    ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.1250000   0.0911644   0.1588356
6 months    ki1000108-IRC              INDIA         NA                   NA                0.1318408   0.0987276   0.1649539
6 months    ki1000109-EE               PAKISTAN      NA                   NA                0.1256684   0.0920293   0.1593076
6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1238671   0.0990601   0.1486741
6 months    ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.0675676   0.0459314   0.0892038
6 months    ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0414594   0.0255348   0.0573839
6 months    ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0293706   0.0169860   0.0417552
6 months    ki1101329-Keneba           GAMBIA        NA                   NA                0.0554723   0.0431843   0.0677602
6 months    ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.0905861   0.0668565   0.1143158
6 months    ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0311578   0.0274581   0.0348575
6 months    ki1135781-COHORTS          INDIA         NA                   NA                0.1282790   0.1199892   0.1365687
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0593093   0.0503382   0.0682804
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0859979   0.0808738   0.0911219
6 months    kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0536465   0.0439582   0.0633347
24 months   ki0047075b-MAL-ED          INDIA         NA                   NA                0.1146789   0.0722843   0.1570735
24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0618280   0.0373207   0.0863352
24 months   ki1000108-IRC              INDIA         NA                   NA                0.0769231   0.0508746   0.1029716
24 months   ki1000109-EE               PAKISTAN      NA                   NA                0.1785714   0.1204842   0.2366587
24 months   ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.1283293   0.0960341   0.1606245
24 months   ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.1070812   0.0818727   0.1322897
24 months   ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1101329-Keneba           GAMBIA        NA                   NA                0.1059603   0.0873965   0.1245240
24 months   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1851852   0.1506144   0.2197560
24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.1832947   0.1467250   0.2198644
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0395738   0.0246551   0.0544926
24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.0908525   0.0827390   0.0989661
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0680498   0.0579935   0.0781061
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.2182093   0.2074424   0.2289762
24 months   kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.2024018   0.1878193   0.2169843


### Parameter: RR


agecat      studyid                    country       intervention_level           baseline_level                 estimate    ci_lower    ci_upper
----------  -------------------------  ------------  ---------------------------  ---------------------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki0047075b-MAL-ED          BANGLADESH    Low birthweight              Normal or high birthweight     3.726316   2.1338154    6.507325
Birth       ki1000108-IRC              INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1000108-IRC              INDIA         Low birthweight              Normal or high birthweight     3.047358   2.2369704    4.151324
Birth       ki1000109-EE               PAKISTAN      Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1000109-EE               PAKISTAN      Low birthweight              Normal or high birthweight     3.538461   1.6572602    7.555066
Birth       ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA         Low birthweight              Normal or high birthweight    11.017834   6.7856467   17.889623
Birth       ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1017093-NIH-Birth        BANGLADESH    Low birthweight              Normal or high birthweight     3.472622   2.7248121    4.425664
Birth       ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1017093b-PROVIDE         BANGLADESH    Low birthweight              Normal or high birthweight     4.101832   3.0116862    5.586580
Birth       ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH    Low birthweight              Normal or high birthweight     3.882668   3.0549483    4.934653
Birth       ki1101329-Keneba           GAMBIA        Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1101329-Keneba           GAMBIA        Low birthweight              Normal or high birthweight     2.698341   2.2793942    3.194288
Birth       ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1113344-GMS-Nepal        NEPAL         Low birthweight              Normal or high birthweight     4.730830   3.4818937    6.427752
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low birthweight              Normal or high birthweight     6.119672   5.7250316    6.541516
Birth       ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          GUATEMALA     Low birthweight              Normal or high birthweight     2.407407   1.8298464    3.167266
Birth       ki1135781-COHORTS          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          INDIA         Low birthweight              Normal or high birthweight     5.138851   4.6617313    5.664804
Birth       ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          PHILIPPINES   Low birthweight              Normal or high birthweight     5.385082   4.6560839    6.228219
Birth       kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low birthweight              Normal or high birthweight     7.606998   6.8209246    8.483661
Birth       kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH    Low birthweight              Normal or high birthweight     7.073785   4.9291565   10.151520
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low birthweight              Normal or high birthweight     2.099483   1.1236521    3.922771
6 months    ki1000108-IRC              INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1000108-IRC              INDIA         Low birthweight              Normal or high birthweight     1.596324   0.9032000    2.821356
6 months    ki1000109-EE               PAKISTAN      Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1000109-EE               PAKISTAN      Low birthweight              Normal or high birthweight     1.258724   0.7311979    2.166836
6 months    ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA         Low birthweight              Normal or high birthweight     1.606926   1.1584453    2.229031
6 months    ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH    Low birthweight              Normal or high birthweight     2.295438   1.2154478    4.335056
6 months    ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH    Low birthweight              Normal or high birthweight     4.825175   2.2152499   10.510016
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Low birthweight              Normal or high birthweight     2.914439   1.2588610    6.747331
6 months    ki1101329-Keneba           GAMBIA        Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA        Low birthweight              Normal or high birthweight     1.179822   0.6482759    2.147201
6 months    ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1113344-GMS-Nepal        NEPAL         Low birthweight              Normal or high birthweight     3.152519   1.8664521    5.324743
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low birthweight              Normal or high birthweight     1.501730   1.1028086    2.044955
6 months    ki1135781-COHORTS          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA         Low birthweight              Normal or high birthweight     2.450807   2.1554569    2.786627
6 months    ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES   Low birthweight              Normal or high birthweight     1.744824   1.1528891    2.640680
6 months    kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low birthweight              Normal or high birthweight     1.999709   1.7696912    2.259624
6 months    kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH    Low birthweight              Normal or high birthweight     1.720906   1.2202093    2.427058
24 months   ki0047075b-MAL-ED          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA         Low birthweight              Normal or high birthweight     3.153409   1.5203970    6.540390
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low birthweight              Normal or high birthweight     3.347384   1.4589101    7.680376
24 months   ki1000108-IRC              INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1000108-IRC              INDIA         Low birthweight              Normal or high birthweight     2.709559   1.3606132    5.395883
24 months   ki1000109-EE               PAKISTAN      Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1000109-EE               PAKISTAN      Low birthweight              Normal or high birthweight     1.507463   0.7888949    2.880540
24 months   ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH    Low birthweight              Normal or high birthweight     2.721129   1.6513573    4.483912
24 months   ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH    Low birthweight              Normal or high birthweight     2.781775   1.7536650    4.412627
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low birthweight              Normal or high birthweight     2.052910   1.1702221    3.601402
24 months   ki1101329-Keneba           GAMBIA        Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA        Low birthweight              Normal or high birthweight     1.800031   1.2020219    2.695550
24 months   ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL         Low birthweight              Normal or high birthweight     1.891833   1.3075690    2.737166
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low birthweight              Normal or high birthweight     1.215290   0.7724249    1.912070
24 months   ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA     Low birthweight              Normal or high birthweight     5.080645   2.3641232   10.918617
24 months   ki1135781-COHORTS          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA         Low birthweight              Normal or high birthweight     2.105046   1.7479965    2.535027
24 months   ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES   Low birthweight              Normal or high birthweight     2.474982   1.7267751    3.547386
24 months   kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low birthweight              Normal or high birthweight     1.866618   1.6961939    2.054165
24 months   kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low birthweight              Normal or high birthweight     1.727818   1.4855914    2.009539


### Parameter: PAR


agecat      studyid                    country       intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    Normal or high birthweight   NA                0.0544475    0.0214393   0.0874557
Birth       ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0587621    0.0334624   0.0840618
Birth       ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.0445836    0.0095540   0.0796133
Birth       ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.0700682    0.0466612   0.0934752
Birth       ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.1164019    0.0886685   0.1441354
Birth       ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.0952365    0.0686004   0.1218727
Birth       ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.0934620    0.0711004   0.1158235
Birth       ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0451107    0.0337528   0.0564686
Birth       ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.1021147    0.0771543   0.1270750
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0543393    0.0504633   0.0582154
Birth       ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0231990    0.0117842   0.0346138
Birth       ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0715279    0.0649466   0.0781092
Birth       ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0376393    0.0307785   0.0445002
Birth       kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0729008    0.0683798   0.0774219
Birth       kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0616381    0.0489203   0.0743558
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.0142308   -0.0015885   0.0300500
6 months    ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0120803   -0.0050139   0.0291745
6 months    ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.0104421   -0.0150071   0.0358913
6 months    ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.0159750    0.0043707   0.0275793
6 months    ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.0185212    0.0022683   0.0347742
6 months    ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.0197202    0.0070683   0.0323722
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.0091871    0.0002335   0.0181408
6 months    ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0013710   -0.0038931   0.0066352
6 months    ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.0351705    0.0163315   0.0540096
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0018533    0.0002255   0.0034811
6 months    ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0288790    0.0236366   0.0341213
6 months    ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0038457    0.0002865   0.0074050
6 months    kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0249521    0.0203354   0.0295687
6 months    kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0083886    0.0028992   0.0138779
24 months   ki0047075b-MAL-ED          INDIA         Normal or high birthweight   NA                0.0281924    0.0027333   0.0536515
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.0131957   -0.0003746   0.0267661
24 months   ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0172216    0.0013795   0.0330637
24 months   ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.0300566   -0.0188811   0.0789943
24 months   ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.0444132    0.0190262   0.0698002
24 months   ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.0320812    0.0141912   0.0499711
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.0179610    0.0015048   0.0344172
24 months   ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0109326    0.0017501   0.0201152
24 months   ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.0358894    0.0122167   0.0595621
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0082205   -0.0119539   0.0283948
24 months   ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0110024    0.0022289   0.0197759
24 months   ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0156799    0.0108515   0.0205084
24 months   ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0079131    0.0034601   0.0123661
24 months   kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0582093    0.0493377   0.0670809
24 months   kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0325648    0.0227210   0.0424087


### Parameter: PAF


agecat      studyid                    country       intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    Normal or high birthweight   NA                0.3251726    0.1203898   0.4822798
Birth       ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.2190805    0.1226456   0.3049157
Birth       ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.3586957    0.0507722   0.5667307
Birth       ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.6549596    0.5245258   0.7496124
Birth       ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.3983995    0.3038307   0.4801219
Birth       ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.4330413    0.3155823   0.5303422
Birth       ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.3841722    0.2949691   0.4620890
Birth       ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.1820584    0.1363358   0.2253604
Birth       ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.4958751    0.3823172   0.5885559
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.3405634    0.3189099   0.3615284
Birth       ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0913462    0.0458294   0.1346917
Birth       ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.4041717    0.3711583   0.4354520
Birth       ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.2419433    0.2003274   0.2813935
Birth       kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.6656035    0.6360085   0.6927922
Birth       kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.6179283    0.5010860   0.7074070
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.1138462   -0.0189268   0.2293179
6 months    ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0916281   -0.0460255   0.2111669
6 months    ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.0830925   -0.1423992   0.2640758
6 months    ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.1289686    0.0181318   0.2272937
6 months    ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.2741144    0.0093076   0.4681398
6 months    ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.4756522    0.1593382   0.6729474
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.3128003   -0.0270827   0.5402090
6 months    ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0247158   -0.0747971   0.1150151
6 months    ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.3882550    0.1724461   0.5477855
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0594802    0.0062337   0.1098737
6 months    ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.2251262    0.1853215   0.2629860
6 months    ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0648420    0.0036214   0.1223010
6 months    kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.2901474    0.2381097   0.3386309
6 months    kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.1563676    0.0407117   0.2580796
24 months   ki0047075b-MAL-ED          INDIA         Normal or high birthweight   NA                0.2458378    0.0083077   0.4264748
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.2134267   -0.0199247   0.3933890
24 months   ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.2238806    0.0042292   0.3950804
24 months   ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.1683168   -0.1514072   0.3992595
24 months   ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.3460879    0.1366503   0.5047186
24 months   ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.2995968    0.1271226   0.4379913
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.2051546    0.0026302   0.3665548
24 months   ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.1031768    0.0138390   0.1844213
24 months   ki1113344-GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.1938028    0.0591207   0.3092059
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0448484   -0.0715757   0.1486234
24 months   ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.2780220    0.0514908   0.4504510
24 months   ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.1725866    0.1197195   0.2222787
24 months   ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.1162842    0.0505100   0.1775021
24 months   kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.2667590    0.2252482   0.3060456
24 months   kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.1608921    0.1106063   0.2083347

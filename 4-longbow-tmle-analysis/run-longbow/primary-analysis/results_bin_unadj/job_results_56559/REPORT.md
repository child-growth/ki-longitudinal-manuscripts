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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        birthwt                       ever_co   n_cell       n  outcome_variable 
------------  -------------------------  -----------------------------  ---------------------------  --------  -------  ------  -----------------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          0      184     260  ever_co          
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          1       21     260  ever_co          
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                     0       38     260  ever_co          
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                     1       17     260  ever_co          
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          0      219     233  ever_co          
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          1        2     233  ever_co          
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                     0       11     233  ever_co          
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                     1        1     233  ever_co          
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          0      168     241  ever_co          
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          1       37     241  ever_co          
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                     0       24     241  ever_co          
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                     1       12     241  ever_co          
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          0      200     233  ever_co          
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          1       14     233  ever_co          
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                     0       14     233  ever_co          
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                     1        5     233  ever_co          
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight          0      275     299  ever_co          
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight          1        7     299  ever_co          
0-24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                     0       12     299  ever_co          
0-24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                     1        5     299  ever_co          
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          0      274     310  ever_co          
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          1       16     310  ever_co          
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                     0       15     310  ever_co          
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                     1        5     310  ever_co          
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      172     196  ever_co          
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1       14     196  ever_co          
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        9     196  ever_co          
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        1     196  ever_co          
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0      271     373  ever_co          
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1       59     373  ever_co          
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                     0       16     373  ever_co          
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                     1       27     373  ever_co          
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight          0      295     404  ever_co          
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight          1       40     404  ever_co          
0-24 months   ki1000108-IRC              INDIA                          Low birthweight                     0       36     404  ever_co          
0-24 months   ki1000108-IRC              INDIA                          Low birthweight                     1       33     404  ever_co          
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight          0      154     378  ever_co          
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight          1       91     378  ever_co          
0-24 months   ki1000109-EE               PAKISTAN                       Low birthweight                     0       55     378  ever_co          
0-24 months   ki1000109-EE               PAKISTAN                       Low birthweight                     1       78     378  ever_co          
0-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          0       33      42  ever_co          
0-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          1        2      42  ever_co          
0-24 months   ki1000109-ResPak           PAKISTAN                       Low birthweight                     0        4      42  ever_co          
0-24 months   ki1000109-ResPak           PAKISTAN                       Low birthweight                     1        3      42  ever_co          
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          0      943    1503  ever_co          
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          1      193    1503  ever_co          
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                     0      210    1503  ever_co          
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                     1      157    1503  ever_co          
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          0      364     603  ever_co          
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          1       59     603  ever_co          
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                     0      106     603  ever_co          
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                     1       74     603  ever_co          
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          0      489     700  ever_co          
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          1       43     700  ever_co          
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                     0      121     700  ever_co          
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                     1       47     700  ever_co          
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          0      549     758  ever_co          
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          1       32     758  ever_co          
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                     0      138     758  ever_co          
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                     1       39     758  ever_co          
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0     2188    2371  ever_co          
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1      101    2371  ever_co          
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0       67    2371  ever_co          
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1       15    2371  ever_co          
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight          0     1139    1538  ever_co          
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight          1      177    1538  ever_co          
0-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                     0      145    1538  ever_co          
0-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                     1       77    1538  ever_co          
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight          0      374     685  ever_co          
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight          1      103     685  ever_co          
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                     0      110     685  ever_co          
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                     1       98     685  ever_co          
0-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          0       12      20  ever_co          
0-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          1        2      20  ever_co          
0-24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                     0        4      20  ever_co          
0-24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                     1        2      20  ever_co          
0-24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight          0        2       2  ever_co          
0-24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight          1        0       2  ever_co          
0-24 months   ki1114097-CONTENT          PERU                           Low birthweight                     0        0       2  ever_co          
0-24 months   ki1114097-CONTENT          PERU                           Low birthweight                     1        0       2  ever_co          
0-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight          0    16870   16897  ever_co          
0-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight          1       27   16897  ever_co          
0-24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                     0        0   16897  ever_co          
0-24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                     1        0   16897  ever_co          
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0    11726   13897  ever_co          
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1      339   13897  ever_co          
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                     0     1581   13897  ever_co          
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                     1      251   13897  ever_co          
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          0      763     929  ever_co          
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          1       85     929  ever_co          
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                     0       64     929  ever_co          
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                     1       17     929  ever_co          
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight          0     5088    6758  ever_co          
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight          1      291    6758  ever_co          
0-24 months   ki1135781-COHORTS          INDIA                          Low birthweight                     0     1059    6758  ever_co          
0-24 months   ki1135781-COHORTS          INDIA                          Low birthweight                     1      320    6758  ever_co          
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          0     2283    3001  ever_co          
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          1      431    3001  ever_co          
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                     0      168    3001  ever_co          
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                     1      119    3001  ever_co          
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          0    12621   22524  ever_co          
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          1      411   22524  ever_co          
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                     0     7875   22524  ever_co          
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                     1     1617   22524  ever_co          
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          0     2974    4508  ever_co          
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          1      355    4508  ever_co          
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                     0      792    4508  ever_co          
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                     1      387    4508  ever_co          
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          0      202     260  ever_co          
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          1        3     260  ever_co          
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                     0       49     260  ever_co          
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                     1        6     260  ever_co          
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          0      221     233  ever_co          
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          1        0     233  ever_co          
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                     0       11     233  ever_co          
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                     1        1     233  ever_co          
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          0      194     241  ever_co          
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          1       11     241  ever_co          
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight                     0       31     241  ever_co          
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight                     1        5     241  ever_co          
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          0      210     233  ever_co          
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          1        4     233  ever_co          
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight                     0       16     233  ever_co          
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight                     1        3     233  ever_co          
0-6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight          0      282     299  ever_co          
0-6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight          1        0     299  ever_co          
0-6 months    ki0047075b-MAL-ED          PERU                           Low birthweight                     0       15     299  ever_co          
0-6 months    ki0047075b-MAL-ED          PERU                           Low birthweight                     1        2     299  ever_co          
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          0      290     310  ever_co          
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          1        0     310  ever_co          
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                     0       17     310  ever_co          
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                     1        3     310  ever_co          
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      186     196  ever_co          
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1        0     196  ever_co          
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        9     196  ever_co          
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        1     196  ever_co          
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0      313     368  ever_co          
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1       12     368  ever_co          
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                     0       24     368  ever_co          
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                     1       19     368  ever_co          
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight          0      327     403  ever_co          
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight          1        8     403  ever_co          
0-6 months    ki1000108-IRC              INDIA                          Low birthweight                     0       53     403  ever_co          
0-6 months    ki1000108-IRC              INDIA                          Low birthweight                     1       15     403  ever_co          
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight          0      216     378  ever_co          
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight          1       29     378  ever_co          
0-6 months    ki1000109-EE               PAKISTAN                       Low birthweight                     0      106     378  ever_co          
0-6 months    ki1000109-EE               PAKISTAN                       Low birthweight                     1       27     378  ever_co          
0-6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          0       34      42  ever_co          
0-6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          1        1      42  ever_co          
0-6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight                     0        5      42  ever_co          
0-6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight                     1        2      42  ever_co          
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          0     1095    1495  ever_co          
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          1       40    1495  ever_co          
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                     0      294    1495  ever_co          
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                     1       66    1495  ever_co          
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          0      415     601  ever_co          
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          1        8     601  ever_co          
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                     0      142     601  ever_co          
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                     1       36     601  ever_co          
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          0      527     700  ever_co          
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          1        5     700  ever_co          
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                     0      143     700  ever_co          
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                     1       25     700  ever_co          
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          0      580     758  ever_co          
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          1        1     758  ever_co          
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                     0      161     758  ever_co          
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                     1       16     758  ever_co          
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0     2277    2371  ever_co          
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1       12    2371  ever_co          
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0       77    2371  ever_co          
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        5    2371  ever_co          
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight          0     1300    1537  ever_co          
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight          1       16    1537  ever_co          
0-6 months    ki1101329-Keneba           GAMBIA                         Low birthweight                     0      196    1537  ever_co          
0-6 months    ki1101329-Keneba           GAMBIA                         Low birthweight                     1       25    1537  ever_co          
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight          0      469     685  ever_co          
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight          1        8     685  ever_co          
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                     0      180     685  ever_co          
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                     1       28     685  ever_co          
0-6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          0       14      20  ever_co          
0-6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          1        0      20  ever_co          
0-6 months    ki1114097-CMIN             BANGLADESH                     Low birthweight                     0        5      20  ever_co          
0-6 months    ki1114097-CMIN             BANGLADESH                     Low birthweight                     1        1      20  ever_co          
0-6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight          0        2       2  ever_co          
0-6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight          1        0       2  ever_co          
0-6 months    ki1114097-CONTENT          PERU                           Low birthweight                     0        0       2  ever_co          
0-6 months    ki1114097-CONTENT          PERU                           Low birthweight                     1        0       2  ever_co          
0-6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight          0    16874   16893  ever_co          
0-6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight          1       19   16893  ever_co          
0-6 months    ki1119695-PROBIT           BELARUS                        Low birthweight                     0        0   16893  ever_co          
0-6 months    ki1119695-PROBIT           BELARUS                        Low birthweight                     1        0   16893  ever_co          
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0    11995   13802  ever_co          
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1       39   13802  ever_co          
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                     0     1640   13802  ever_co          
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                     1      128   13802  ever_co          
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          0      802     896  ever_co          
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          1       16     896  ever_co          
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight                     0       77     896  ever_co          
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight                     1        1     896  ever_co          
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight          0     5223    6593  ever_co          
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight          1       30    6593  ever_co          
0-6 months    ki1135781-COHORTS          INDIA                          Low birthweight                     0     1192    6593  ever_co          
0-6 months    ki1135781-COHORTS          INDIA                          Low birthweight                     1      148    6593  ever_co          
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          0     2674    3000  ever_co          
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          1       40    3000  ever_co          
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight                     0      255    3000  ever_co          
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight                     1       31    3000  ever_co          
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          0    12976   22477  ever_co          
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          1       55   22477  ever_co          
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                     0     8641   22477  ever_co          
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                     1      805   22477  ever_co          
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          0     3292    4466  ever_co          
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          1       28    4466  ever_co          
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                     0     1050    4466  ever_co          
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                     1       96    4466  ever_co          
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          0      167     237  ever_co          
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          1       19     237  ever_co          
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                     0       36     237  ever_co          
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                     1       15     237  ever_co          
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          0      195     207  ever_co          
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          1        2     207  ever_co          
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                     0       10     207  ever_co          
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                     1        0     207  ever_co          
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          0      159     226  ever_co          
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          1       33     226  ever_co          
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                     0       24     226  ever_co          
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                     1       10     226  ever_co          
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          0      198     228  ever_co          
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          1       11     228  ever_co          
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                     0       17     228  ever_co          
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                     1        2     228  ever_co          
6-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight          0      244     267  ever_co          
6-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight          1        7     267  ever_co          
6-24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                     0       12     267  ever_co          
6-24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                     1        4     267  ever_co          
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          0      227     258  ever_co          
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          1       16     258  ever_co          
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                     0       11     258  ever_co          
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                     1        4     258  ever_co          
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      162     184  ever_co          
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1       14     184  ever_co          
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        8     184  ever_co          
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        0     184  ever_co          
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0      279     373  ever_co          
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1       51     373  ever_co          
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                     0       24     373  ever_co          
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                     1       19     373  ever_co          
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight          0      299     404  ever_co          
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight          1       36     404  ever_co          
6-24 months   ki1000108-IRC              INDIA                          Low birthweight                     0       43     404  ever_co          
6-24 months   ki1000108-IRC              INDIA                          Low birthweight                     1       26     404  ever_co          
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight          0      155     371  ever_co          
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight          1       86     371  ever_co          
6-24 months   ki1000109-EE               PAKISTAN                       Low birthweight                     0       60     371  ever_co          
6-24 months   ki1000109-EE               PAKISTAN                       Low birthweight                     1       70     371  ever_co          
6-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          0       25      32  ever_co          
6-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          1        2      32  ever_co          
6-24 months   ki1000109-ResPak           PAKISTAN                       Low birthweight                     0        3      32  ever_co          
6-24 months   ki1000109-ResPak           PAKISTAN                       Low birthweight                     1        2      32  ever_co          
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          0      865    1379  ever_co          
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          1      181    1379  ever_co          
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                     0      201    1379  ever_co          
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                     1      132    1379  ever_co          
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          0      312     522  ever_co          
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          1       54     522  ever_co          
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                     0       99     522  ever_co          
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                     1       57     522  ever_co          
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          0      427     614  ever_co          
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          1       39     614  ever_co          
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                     0      112     614  ever_co          
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                     1       36     614  ever_co          
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          0      528     730  ever_co          
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          1       31     730  ever_co          
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                     0      139     730  ever_co          
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                     1       32     730  ever_co          
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0     1834    1997  ever_co          
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1       98    1997  ever_co          
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0       52    1997  ever_co          
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1       13    1997  ever_co          
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight          0     1096    1473  ever_co          
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight          1      173    1473  ever_co          
6-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                     0      138    1473  ever_co          
6-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                     1       66    1473  ever_co          
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight          0      311     589  ever_co          
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight          1      101     589  ever_co          
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                     0       87     589  ever_co          
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                     1       90     589  ever_co          
6-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          0        7      12  ever_co          
6-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          1        2      12  ever_co          
6-24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                     0        2      12  ever_co          
6-24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                     1        1      12  ever_co          
6-24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight          0        2       2  ever_co          
6-24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight          1        0       2  ever_co          
6-24 months   ki1114097-CONTENT          PERU                           Low birthweight                     0        0       2  ever_co          
6-24 months   ki1114097-CONTENT          PERU                           Low birthweight                     1        0       2  ever_co          
6-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight          0    16589   16598  ever_co          
6-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight          1        9   16598  ever_co          
6-24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                     0        0   16598  ever_co          
6-24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                     1        0   16598  ever_co          
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0     9068   10778  ever_co          
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1      309   10778  ever_co          
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                     0     1267   10778  ever_co          
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                     1      134   10778  ever_co          
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          0      679     825  ever_co          
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          1       74     825  ever_co          
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                     0       56     825  ever_co          
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                     1       16     825  ever_co          
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight          0     4750    6296  ever_co          
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight          1      284    6296  ever_co          
6-24 months   ki1135781-COHORTS          INDIA                          Low birthweight                     0     1019    6296  ever_co          
6-24 months   ki1135781-COHORTS          INDIA                          Low birthweight                     1      243    6296  ever_co          
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          0     2091    2765  ever_co          
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          1      420    2765  ever_co          
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                     0      148    2765  ever_co          
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                     1      106    2765  ever_co          
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          0     8212   14513  ever_co          
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          1      364   14513  ever_co          
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                     0     4988   14513  ever_co          
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                     1      949   14513  ever_co          
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          0     2983    4499  ever_co          
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          1      338    4499  ever_co          
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                     0      847    4499  ever_co          
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                     1      331    4499  ever_co          


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
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/886f28ec-93bc-493a-a356-c5b759a6b4d1/2113c7f1-4f68-4206-a70f-537b7f21de1c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/886f28ec-93bc-493a-a356-c5b759a6b4d1/2113c7f1-4f68-4206-a70f-537b7f21de1c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/886f28ec-93bc-493a-a356-c5b759a6b4d1/2113c7f1-4f68-4206-a70f-537b7f21de1c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/886f28ec-93bc-493a-a356-c5b759a6b4d1/2113c7f1-4f68-4206-a70f-537b7f21de1c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1024390   0.0608506   0.1440275
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                0.3090909   0.1867259   0.4314559
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1804878   0.1277313   0.2332443
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.3333333   0.1790235   0.4876431
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.0654206   0.0322204   0.0986207
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                0.2631579   0.0647309   0.4615849
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.0248227   0.0066333   0.0430120
0-24 months   ki0047075b-MAL-ED          PERU                           Low birthweight              NA                0.2941176   0.0771586   0.5110767
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.0551724   0.0288523   0.0814925
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                0.2500000   0.0599205   0.4400795
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1787879   0.1373907   0.2201851
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.6279070   0.4832397   0.7725742
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1194030   0.0846366   0.1541694
0-24 months   ki1000108-IRC              INDIA                          Low birthweight              NA                0.4782609   0.3602503   0.5962714
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.3714286   0.3108449   0.4320122
0-24 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.5864662   0.5026603   0.6702720
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.1698944   0.1339946   0.2057941
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.4277929   0.3560087   0.4995771
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1394799   0.1064373   0.1725225
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.4111111   0.3391714   0.4830508
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0808271   0.0576489   0.1040053
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.2797619   0.2118359   0.3476879
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0550775   0.0365152   0.0736397
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.2203390   0.1592382   0.2814398
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0441241   0.0357090   0.0525391
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.1829268   0.0992314   0.2666223
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1344985   0.1160588   0.1529382
0-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.3468468   0.2842159   0.4094778
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.2159329   0.1789806   0.2528853
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.4711538   0.4032679   0.5390398
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0280978   0.0251490   0.0310466
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.1370087   0.1212624   0.1527550
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.1002359   0.0800122   0.1204595
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                0.2098765   0.1211469   0.2986062
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0540993   0.0480536   0.0601450
0-24 months   ki1135781-COHORTS          INDIA                          Low birthweight              NA                0.2320522   0.2097701   0.2543343
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1588062   0.1450532   0.1725592
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                0.4146342   0.3576275   0.4716408
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0315378   0.0283517   0.0347238
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                0.1703540   0.1623626   0.1783453
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.1066386   0.0940702   0.1192071
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.3282443   0.2973961   0.3590924
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0536585   0.0227472   0.0845698
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.1388889   0.0256845   0.2520932
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0369231   0.0163937   0.0574525
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.4418605   0.2932263   0.5904947
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0238806   0.0075110   0.0402502
0-6 months    ki1000108-IRC              INDIA                          Low birthweight              NA                0.2205882   0.1219131   0.3192634
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1183673   0.0778631   0.1588715
0-6 months    ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.2030075   0.1345564   0.2714587
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0352423   0.0179597   0.0525248
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.1833333   0.1285885   0.2380781
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0189125   0.0059208   0.0319043
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.2022472   0.1431897   0.2613047
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0093985   0.0011934   0.0176035
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.1488095   0.0949537   0.2026653
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0052425   0.0022835   0.0082015
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.0609756   0.0091733   0.1127779
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0121581   0.0062351   0.0180810
0-6 months    ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.1131222   0.0713488   0.1548955
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0167715   0.0052391   0.0283039
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.1346154   0.0881975   0.1810333
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0032408   0.0022253   0.0042563
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.0723982   0.0603182   0.0844782
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0057110   0.0036731   0.0077490
0-6 months    ki1135781-COHORTS          INDIA                          Low birthweight              NA                0.1104478   0.0936639   0.1272317
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0147384   0.0102040   0.0192728
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                0.1083916   0.0723568   0.1444264
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0042207   0.0030992   0.0053422
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                0.0852213   0.0793107   0.0911318
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0084337   0.0044607   0.0124068
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.0837696   0.0647670   0.1027723
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1021505   0.0585359   0.1457651
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                0.2941176   0.1688013   0.4194340
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1718750   0.1183921   0.2253579
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.2941176   0.1406212   0.4476141
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1545455   0.1154931   0.1935978
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.4418605   0.2932290   0.5904919
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1074627   0.0742575   0.1406679
6-24 months   ki1000108-IRC              INDIA                          Low birthweight              NA                0.3768116   0.2623306   0.4912926
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.3568465   0.2962812   0.4174117
6-24 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.5384615   0.4526504   0.6242727
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.1730402   0.1422764   0.2038039
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.3963964   0.3186325   0.4741603
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1475410   0.1111732   0.1839088
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.3653846   0.2897479   0.4410213
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0836910   0.0585276   0.1088544
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.2432432   0.1740650   0.3124215
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0554562   0.0364705   0.0744418
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.1871345   0.1286375   0.2456316
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0507246   0.0409374   0.0605118
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.2000000   0.1027342   0.2972658
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1363278   0.1174422   0.1552134
6-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.3235294   0.2593107   0.3877482
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.2451456   0.2035726   0.2867187
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.5084746   0.4347626   0.5821866
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0329530   0.0293396   0.0365663
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.0956460   0.0802449   0.1110471
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0982736   0.0769986   0.1195486
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                0.2222222   0.1261348   0.3183097
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0564164   0.0500423   0.0627905
6-24 months   ki1135781-COHORTS          INDIA                          Low birthweight              NA                0.1925515   0.1707953   0.2143077
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1672640   0.1526639   0.1818642
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                0.4173228   0.3566688   0.4779769
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0424440   0.0378983   0.0469897
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                0.1598450   0.1500589   0.1696312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.1017766   0.0895272   0.1140260
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.2809847   0.2528114   0.3091580


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1461538   0.1031316   0.1891761
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2033195   0.1524012   0.2542378
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.0815451   0.0463297   0.1167604
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0401338   0.0178494   0.0624181
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.0677419   0.0397221   0.0957618
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2305630   0.1877616   0.2733644
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1806931   0.1431275   0.2182586
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.4470899   0.3969017   0.4972782
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2328676   0.1923832   0.2733520
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2205638   0.1874426   0.2536851
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0489245   0.0402400   0.0576090
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1651495   0.1465863   0.1837128
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2934307   0.2593074   0.3275539
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0424552   0.0391029   0.0458075
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1097955   0.0896809   0.1299101
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0904114   0.0835737   0.0972490
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1832722   0.1694278   0.1971167
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0900373   0.0858293   0.0942453
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1645963   0.1519758   0.1772167
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0663900   0.0348925   0.0978876
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0842391   0.0558231   0.1126551
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0570720   0.0343950   0.0797490
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.1481481   0.1122884   0.1840079
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0709030   0.0481799   0.0936261
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0732113   0.0523687   0.0940539
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0071700   0.0037732   0.0105668
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0266753   0.0186172   0.0347335
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0525547   0.0358322   0.0692773
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0120997   0.0102756   0.0139237
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0269983   0.0230857   0.0309109
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0236667   0.0182263   0.0291070
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0382613   0.0355749   0.0409477
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0277653   0.0218336   0.0336971
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1434599   0.0987369   0.1881829
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1902655   0.1389784   0.2415526
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1876676   0.1479906   0.2273445
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1534653   0.1182750   0.1886557
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.4204852   0.3701867   0.4707837
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2269761   0.1910133   0.2629388
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2126437   0.1775086   0.2477788
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0555834   0.0455321   0.0656347
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1622539   0.1434197   0.1810881
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3242784   0.2864427   0.3621142
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0411022   0.0373541   0.0448504
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1090909   0.0878048   0.1303770
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0837039   0.0768626   0.0905453
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1902351   0.1756031   0.2048671
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0904706   0.0854589   0.0954824
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1486997   0.1368826   0.1605168


### Parameter: RR


agecat        studyid                    country                        intervention_level           baseline_level                 estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight     3.017316    1.7114068    5.319715
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight     1.846847    1.0682185    3.193020
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight     4.022556    1.6209628    9.982314
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    11.848740    4.1890056   33.514548
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight     4.531250    1.8467195   11.118216
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     3.512022    2.5333698    4.868732
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight     4.005435    2.7346185    5.866818
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight     1.578947    1.2711292    1.961307
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight     2.517994    2.0453478    3.099860
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     2.947458    2.1955289    3.956908
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight     3.461240    2.3771011    5.039829
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight     4.000530    2.5856725    6.189584
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     4.145738    2.5253747    6.805778
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     2.578816    2.0556841    3.235075
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     2.181945    1.7445708    2.728973
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     4.876137    4.1733389    5.697287
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     2.093827    1.3106806    3.344912
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight     4.289377    3.7017382    4.970303
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight     2.610945    2.2193700    3.071606
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight     5.401589    4.8552724    6.009377
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight     3.078099    2.6462494    3.580424
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight     2.588384    0.9540245    7.022599
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    11.967054    6.2483354   22.919767
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight     9.237132    4.0743311   20.941993
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight     1.715064    1.0608238    2.772791
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight     5.202083    3.1679207    8.542408
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    10.693820    5.0694818   22.558082
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    15.833333    6.1537207   40.738678
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    11.631098    4.1942654   32.254142
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     9.304299    5.0489153   17.146252
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     8.026442    3.7191996   17.321944
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    22.339482   15.6637971   31.860249
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    19.339403   13.1220312   28.502638
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight     7.354371    4.6754781   11.568179
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    20.191240   15.3669907   26.529995
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight     9.932685    5.9226151   16.657884
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight     2.879257    1.5751362    5.263113
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight     1.711230    0.9320188    3.141898
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     2.859097    1.8772154    4.354554
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight     3.506441    2.2733754    5.408315
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight     1.508944    1.1955369    1.904511
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight     2.290777    1.8491037    2.837947
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     2.476496    1.7949180    3.416887
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight     2.906445    1.9214185    4.396451
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight     3.374458    2.1225931    5.364648
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     3.942857    2.3366058    6.653293
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     2.373172    1.8629704    3.023101
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     2.074174    1.6594076    2.592609
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     2.902499    2.3887277    3.526773
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     2.261261    1.3942573    3.667402
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight     3.413043    2.9090244    4.004389
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight     2.494994    2.1059113    2.955964
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight     3.766019    3.3349213    4.252844
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight     2.760800    2.3596817    3.230103


### Parameter: PAR


agecat        studyid                    country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.0437148    0.0145075   0.0729222
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0228317   -0.0024851   0.0481485
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.0161245   -0.0016978   0.0339468
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.0153111    0.0010506   0.0295716
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.0125695   -0.0009119   0.0260510
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0517751    0.0291178   0.0744325
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0612901    0.0364840   0.0860961
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0756614    0.0378283   0.1134945
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0629732    0.0406986   0.0852479
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0810839    0.0554513   0.1067166
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0477444    0.0294038   0.0660850
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0385901    0.0228688   0.0543113
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0048004    0.0017173   0.0078836
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0306511    0.0205154   0.0407867
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0774977    0.0524344   0.1025611
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0143574    0.0121585   0.0165563
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0095596    0.0013791   0.0177402
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0363121    0.0313002   0.0413240
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0244661    0.0182451   0.0306870
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0584995    0.0548618   0.0621372
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0579576    0.0488457   0.0670696
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0127315   -0.0052142   0.0306772
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0473161    0.0253046   0.0693275
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0331914    0.0148417   0.0515411
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0297808    0.0014997   0.0580619
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0356607    0.0193412   0.0519802
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0542988    0.0351779   0.0734197
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0334586    0.0196592   0.0472581
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0019275    0.0000868   0.0037682
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0145173    0.0081974   0.0208372
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0357833    0.0207029   0.0508636
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0088589    0.0072588   0.0104589
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0212873    0.0177035   0.0248711
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0089283    0.0053287   0.0125279
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0340406    0.0314239   0.0366573
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0193316    0.0141982   0.0244650
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.0413094    0.0110340   0.0715848
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0183905   -0.0067214   0.0435024
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0331221    0.0131021   0.0531421
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0460027    0.0233664   0.0686389
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0636387    0.0257909   0.1014865
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0539359    0.0334315   0.0744404
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0651027    0.0386001   0.0916053
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0384589    0.0199109   0.0570068
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0308452    0.0158808   0.0458096
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0048587    0.0014713   0.0082462
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0259261    0.0160847   0.0357675
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0791328    0.0518936   0.1063721
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0081493    0.0060548   0.0102437
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0108173    0.0019025   0.0197322
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0272876    0.0225481   0.0320270
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0229710    0.0166391   0.0293030
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0480266    0.0436291   0.0524240
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0469231    0.0387092   0.0551371


### Parameter: PAF


agecat        studyid                    country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.2991014    0.0880258   0.4613238
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1122947   -0.0193680   0.2269517
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.1977373   -0.0342233   0.3776727
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.3815012    0.0126056   0.6125755
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.1855501   -0.0227823   0.3514469
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.2245595    0.1252828   0.3125688
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.3391944    0.2030538   0.4520785
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1692308    0.0793422   0.2503430
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.2704251    0.1808437   0.3502100
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.3676212    0.2504837   0.4664519
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.3713450    0.2304333   0.4864551
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.4119900    0.2483241   0.5400202
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0981192    0.0352271   0.1569114
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1855958    0.1244915   0.2424355
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.2641092    0.1759784   0.3428143
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.3381777    0.2917743   0.3815406
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0870676    0.0108830   0.1573843
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.4016319    0.3521519   0.4473328
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1334957    0.0998429   0.1658904
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.6497257    0.6186177   0.6782963
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.3521200    0.2980448   0.4020295
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1917683   -0.1099638   0.4114776
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.5616873    0.3272243   0.7144398
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.5815704    0.2758198   0.7582324
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.2010204   -0.0088744   0.3672469
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.5029507    0.2935404   0.6502872
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.7416720    0.5209728   0.8606899
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.7807018    0.5147381   0.9008953
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.2688305    0.0076893   0.4612485
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.5442212    0.3344433   0.6878789
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.6808758    0.4166183   0.8254312
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.7321571    0.6477437   0.7963420
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.7884676    0.7073268   0.8471129
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.3772510    0.2377745   0.4912053
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.8896875    0.8575269   0.9145884
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.6962495    0.5454829   0.7970057
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.2879507    0.0623716   0.4592588
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0966570   -0.0437342   0.2181644
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1764935    0.0672786   0.2729202
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.2997593    0.1508394   0.4225626
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1513459    0.0559216   0.2371250
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.2376282    0.1558183   0.3115099
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.3061586    0.1774823   0.4147045
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.3148498    0.1602051   0.4410173
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.3574126    0.1830261   0.4945756
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0874135    0.0263735   0.1446267
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1597871    0.0989771   0.2164931
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.2440273    0.1566736   0.3223328
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.1982684    0.1489325   0.2447443
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0991589    0.0155927   0.1756312
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.3260010    0.2732072   0.3749599
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1207508    0.0876264   0.1526727
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.5308528    0.4879642   0.5701490
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.3155563    0.2598743   0.3670492

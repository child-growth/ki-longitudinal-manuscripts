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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        enstunt    stunted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  --------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                0      187     231  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                1        0     231  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                0        0     231  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                1       44     231  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         0                0       56      65  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         0                1        0      65  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1                0        0      65  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1                1        9      65  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          0                0       37      47  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          0                1        0      47  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          1                0        0      47  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          1                1       10      47  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          0                0       25      27  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          0                1        0      27  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          1                0        0      27  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          1                1        2      27  stunted          
Birth       ki0047075b-MAL-ED          PERU                           0                0      207     233  stunted          
Birth       ki0047075b-MAL-ED          PERU                           0                1        0     233  stunted          
Birth       ki0047075b-MAL-ED          PERU                           1                0        0     233  stunted          
Birth       ki0047075b-MAL-ED          PERU                           1                1       26     233  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      113     123  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        0     123  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                0        0     123  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                1       10     123  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      102     125  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        0     125  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        0     125  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1       23     125  stunted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0       75      92  stunted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0      92  stunted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0        0      92  stunted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1       17      92  stunted          
Birth       ki1000108-IRC              INDIA                          0                0      343     388  stunted          
Birth       ki1000108-IRC              INDIA                          0                1        0     388  stunted          
Birth       ki1000108-IRC              INDIA                          1                0        0     388  stunted          
Birth       ki1000108-IRC              INDIA                          1                1       45     388  stunted          
Birth       ki1000109-EE               PAKISTAN                       0                0      140     240  stunted          
Birth       ki1000109-EE               PAKISTAN                       0                1        0     240  stunted          
Birth       ki1000109-EE               PAKISTAN                       1                0        0     240  stunted          
Birth       ki1000109-EE               PAKISTAN                       1                1      100     240  stunted          
Birth       ki1000109-ResPak           PAKISTAN                       0                0       28      42  stunted          
Birth       ki1000109-ResPak           PAKISTAN                       0                1        0      42  stunted          
Birth       ki1000109-ResPak           PAKISTAN                       1                0        0      42  stunted          
Birth       ki1000109-ResPak           PAKISTAN                       1                1       14      42  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                0      903    1252  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                1        0    1252  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                0        0    1252  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                1      349    1252  stunted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                0      511     608  stunted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                1        0     608  stunted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                0        0     608  stunted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                1       97     608  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                0      491     539  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                1        0     539  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                0        0     539  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                1       48     539  stunted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0      631     732  stunted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0     732  stunted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0        0     732  stunted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1      101     732  stunted          
Birth       ki1101329-Keneba           GAMBIA                         0                0     1460    1543  stunted          
Birth       ki1101329-Keneba           GAMBIA                         0                1        0    1543  stunted          
Birth       ki1101329-Keneba           GAMBIA                         1                0        0    1543  stunted          
Birth       ki1101329-Keneba           GAMBIA                         1                1       83    1543  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          0                0      574     696  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          0                1        0     696  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          1                0        0     696  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          1                1      122     696  stunted          
Birth       ki1114097-CMIN             BANGLADESH                     0                0       17      26  stunted          
Birth       ki1114097-CMIN             BANGLADESH                     0                1        0      26  stunted          
Birth       ki1114097-CMIN             BANGLADESH                     1                0        0      26  stunted          
Birth       ki1114097-CMIN             BANGLADESH                     1                1        9      26  stunted          
Birth       ki1114097-CONTENT          PERU                           0                0        2       2  stunted          
Birth       ki1114097-CONTENT          PERU                           0                1        0       2  stunted          
Birth       ki1114097-CONTENT          PERU                           1                0        0       2  stunted          
Birth       ki1114097-CONTENT          PERU                           1                1        0       2  stunted          
Birth       ki1119695-PROBIT           BELARUS                        0                0    13857   13890  stunted          
Birth       ki1119695-PROBIT           BELARUS                        0                1        0   13890  stunted          
Birth       ki1119695-PROBIT           BELARUS                        1                0        0   13890  stunted          
Birth       ki1119695-PROBIT           BELARUS                        1                1       33   13890  stunted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                0    12441   13875  stunted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                1        0   13875  stunted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                0        0   13875  stunted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                1     1434   13875  stunted          
Birth       ki1135781-COHORTS          GUATEMALA                      0                0      802     852  stunted          
Birth       ki1135781-COHORTS          GUATEMALA                      0                1        0     852  stunted          
Birth       ki1135781-COHORTS          GUATEMALA                      1                0        0     852  stunted          
Birth       ki1135781-COHORTS          GUATEMALA                      1                1       50     852  stunted          
Birth       ki1135781-COHORTS          INDIA                          0                0     5848    6640  stunted          
Birth       ki1135781-COHORTS          INDIA                          0                1        0    6640  stunted          
Birth       ki1135781-COHORTS          INDIA                          1                0        0    6640  stunted          
Birth       ki1135781-COHORTS          INDIA                          1                1      792    6640  stunted          
Birth       ki1135781-COHORTS          PHILIPPINES                    0                0     2863    3050  stunted          
Birth       ki1135781-COHORTS          PHILIPPINES                    0                1        0    3050  stunted          
Birth       ki1135781-COHORTS          PHILIPPINES                    1                0        0    3050  stunted          
Birth       ki1135781-COHORTS          PHILIPPINES                    1                1      187    3050  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0    15068   22455  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1        0   22455  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0        0   22455  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1     7387   22455  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0     1966    2823  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1        0    2823  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0        0    2823  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1      857    2823  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                0      180     241  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                1       22     241  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0       17     241  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1       22     241  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         0                0      180     209  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         0                1        4     209  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1                0       23     209  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        2     209  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          0                0      169     236  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          0                1       29     236  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          1                0       22     236  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          1                1       16     236  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          0                0      206     236  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          0                1        2     236  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          1                0       18     236  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          1                1       10     236  stunted          
6 months    ki0047075b-MAL-ED          PERU                           0                0      200     273  stunted          
6 months    ki0047075b-MAL-ED          PERU                           0                1       39     273  stunted          
6 months    ki0047075b-MAL-ED          PERU                           1                0       13     273  stunted          
6 months    ki0047075b-MAL-ED          PERU                           1                1       21     273  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      187     254  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       40     254  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       17     254  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1       10     254  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      174     247  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       34     247  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       14     247  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1       25     247  stunted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0      226     369  stunted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                1       68     369  stunted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0       32     369  stunted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1       43     369  stunted          
6 months    ki1000108-IRC              INDIA                          0                0      285     407  stunted          
6 months    ki1000108-IRC              INDIA                          0                1       73     407  stunted          
6 months    ki1000108-IRC              INDIA                          1                0       22     407  stunted          
6 months    ki1000108-IRC              INDIA                          1                1       27     407  stunted          
6 months    ki1000109-EE               PAKISTAN                       0                0      152     373  stunted          
6 months    ki1000109-EE               PAKISTAN                       0                1       57     373  stunted          
6 months    ki1000109-EE               PAKISTAN                       1                0       38     373  stunted          
6 months    ki1000109-EE               PAKISTAN                       1                1      126     373  stunted          
6 months    ki1000109-ResPak           PAKISTAN                       0                0      118     239  stunted          
6 months    ki1000109-ResPak           PAKISTAN                       0                1       55     239  stunted          
6 months    ki1000109-ResPak           PAKISTAN                       1                0       35     239  stunted          
6 months    ki1000109-ResPak           PAKISTAN                       1                1       31     239  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                0      819    1336  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                1      153    1336  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                0      137    1336  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                1      227    1336  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                0      201     380  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                1       31     380  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0       16     380  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1      132     380  stunted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                0      365     537  stunted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                1       87     537  stunted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                0       28     537  stunted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                1       57     537  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0      478     604  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1       65     604  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0       30     604  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1       31     604  stunted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0      517     715  stunted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1       96     715  stunted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0       48     715  stunted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1       54     715  stunted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     1754    2029  stunted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1      136    2029  stunted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0       78    2029  stunted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       61    2029  stunted          
6 months    ki1101329-Keneba           GAMBIA                         0                0     1685    2089  stunted          
6 months    ki1101329-Keneba           GAMBIA                         0                1      207    2089  stunted          
6 months    ki1101329-Keneba           GAMBIA                         1                0      109    2089  stunted          
6 months    ki1101329-Keneba           GAMBIA                         1                1       88    2089  stunted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                0      202     299  stunted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                1       26     299  stunted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                0        7     299  stunted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                1       64     299  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          0                0      402     564  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          0                1       71     564  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          1                0       40     564  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          1                1       51     564  stunted          
6 months    ki1114097-CMIN             BANGLADESH                     0                0      123     243  stunted          
6 months    ki1114097-CMIN             BANGLADESH                     0                1       28     243  stunted          
6 months    ki1114097-CMIN             BANGLADESH                     1                0       27     243  stunted          
6 months    ki1114097-CMIN             BANGLADESH                     1                1       65     243  stunted          
6 months    ki1114097-CONTENT          PERU                           0                0      185     215  stunted          
6 months    ki1114097-CONTENT          PERU                           0                1       12     215  stunted          
6 months    ki1114097-CONTENT          PERU                           1                0       11     215  stunted          
6 months    ki1114097-CONTENT          PERU                           1                1        7     215  stunted          
6 months    ki1119695-PROBIT           BELARUS                        0                0    14691   15761  stunted          
6 months    ki1119695-PROBIT           BELARUS                        0                1      941   15761  stunted          
6 months    ki1119695-PROBIT           BELARUS                        1                0       82   15761  stunted          
6 months    ki1119695-PROBIT           BELARUS                        1                1       47   15761  stunted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                0     6733    8669  stunted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                1     1062    8669  stunted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0      524    8669  stunted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1      350    8669  stunted          
6 months    ki1135781-COHORTS          GUATEMALA                      0                0      551     961  stunted          
6 months    ki1135781-COHORTS          GUATEMALA                      0                1      258     961  stunted          
6 months    ki1135781-COHORTS          GUATEMALA                      1                0       16     961  stunted          
6 months    ki1135781-COHORTS          GUATEMALA                      1                1      136     961  stunted          
6 months    ki1135781-COHORTS          INDIA                          0                0     5269    6860  stunted          
6 months    ki1135781-COHORTS          INDIA                          0                1      779    6860  stunted          
6 months    ki1135781-COHORTS          INDIA                          1                0      319    6860  stunted          
6 months    ki1135781-COHORTS          INDIA                          1                1      493    6860  stunted          
6 months    ki1135781-COHORTS          PHILIPPINES                    0                0     2082    2708  stunted          
6 months    ki1135781-COHORTS          PHILIPPINES                    0                1      470    2708  stunted          
6 months    ki1135781-COHORTS          PHILIPPINES                    1                0       54    2708  stunted          
6 months    ki1135781-COHORTS          PHILIPPINES                    1                1      102    2708  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         0                0      530     839  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         0                1        0     839  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         1                0        0     839  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         1                1      309     839  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0    10285   16811  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1     1422   16811  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0     2300   16811  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1     2804   16811  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0     3064    4831  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1      411    4831  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0      546    4831  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1      810    4831  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                0      103     212  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                1       76     212  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0        8     212  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1       25     212  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         0                0      144     169  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         0                1        6     169  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1                0       18     169  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        1     169  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          0                0      118     227  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          0                1       73     227  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          1                0       12     227  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          1                1       24     227  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          0                0      165     228  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          0                1       36     228  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          1                0       13     228  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          1                1       14     228  stunted          
24 months   ki0047075b-MAL-ED          PERU                           0                0      117     201  stunted          
24 months   ki0047075b-MAL-ED          PERU                           0                1       57     201  stunted          
24 months   ki0047075b-MAL-ED          PERU                           1                0       10     201  stunted          
24 months   ki0047075b-MAL-ED          PERU                           1                1       17     201  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      139     238  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       75     238  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       15     238  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        9     238  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       57     214  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1      124     214  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        2     214  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1       31     214  stunted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0       89     371  stunted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1      205     371  stunted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       16     371  stunted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1       61     371  stunted          
24 months   ki1000108-IRC              INDIA                          0                0      217     409  stunted          
24 months   ki1000108-IRC              INDIA                          0                1      141     409  stunted          
24 months   ki1000108-IRC              INDIA                          1                0       20     409  stunted          
24 months   ki1000108-IRC              INDIA                          1                1       31     409  stunted          
24 months   ki1000109-EE               PAKISTAN                       0                0       38     167  stunted          
24 months   ki1000109-EE               PAKISTAN                       0                1       62     167  stunted          
24 months   ki1000109-EE               PAKISTAN                       1                0       11     167  stunted          
24 months   ki1000109-EE               PAKISTAN                       1                1       56     167  stunted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                0      172     429  stunted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                1      183     429  stunted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0       13     429  stunted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1       61     429  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0      361     578  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1      157     578  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0       27     578  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       33     578  stunted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0      346     514  stunted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1       98     514  stunted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0       36     514  stunted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1       34     514  stunted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        5       6  stunted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        1       6  stunted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        0       6  stunted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6  stunted          
24 months   ki1101329-Keneba           GAMBIA                         0                0     1080    1725  stunted          
24 months   ki1101329-Keneba           GAMBIA                         0                1      469    1725  stunted          
24 months   ki1101329-Keneba           GAMBIA                         1                0       64    1725  stunted          
24 months   ki1101329-Keneba           GAMBIA                         1                1      112    1725  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          0                0      240     488  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          0                1      166     488  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          1                0       29     488  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          1                1       53     488  stunted          
24 months   ki1114097-CMIN             BANGLADESH                     0                0       61     242  stunted          
24 months   ki1114097-CMIN             BANGLADESH                     0                1       92     242  stunted          
24 months   ki1114097-CMIN             BANGLADESH                     1                0       16     242  stunted          
24 months   ki1114097-CMIN             BANGLADESH                     1                1       73     242  stunted          
24 months   ki1114097-CONTENT          PERU                           0                0      133     164  stunted          
24 months   ki1114097-CONTENT          PERU                           0                1       14     164  stunted          
24 months   ki1114097-CONTENT          PERU                           1                0       10     164  stunted          
24 months   ki1114097-CONTENT          PERU                           1                1        7     164  stunted          
24 months   ki1119695-PROBIT           BELARUS                        0                0     3684    4035  stunted          
24 months   ki1119695-PROBIT           BELARUS                        0                1      340    4035  stunted          
24 months   ki1119695-PROBIT           BELARUS                        1                0        7    4035  stunted          
24 months   ki1119695-PROBIT           BELARUS                        1                1        4    4035  stunted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0      968    1640  stunted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1      438    1640  stunted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0      103    1640  stunted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1      131    1640  stunted          
24 months   ki1135781-COHORTS          GUATEMALA                      0                0      193    1070  stunted          
24 months   ki1135781-COHORTS          GUATEMALA                      0                1      547    1070  stunted          
24 months   ki1135781-COHORTS          GUATEMALA                      1                0        9    1070  stunted          
24 months   ki1135781-COHORTS          GUATEMALA                      1                1      321    1070  stunted          
24 months   ki1135781-COHORTS          INDIA                          0                0     2348    5337  stunted          
24 months   ki1135781-COHORTS          INDIA                          0                1     2348    5337  stunted          
24 months   ki1135781-COHORTS          INDIA                          1                0      133    5337  stunted          
24 months   ki1135781-COHORTS          INDIA                          1                1      508    5337  stunted          
24 months   ki1135781-COHORTS          PHILIPPINES                    0                0      908    2445  stunted          
24 months   ki1135781-COHORTS          PHILIPPINES                    0                1     1402    2445  stunted          
24 months   ki1135781-COHORTS          PHILIPPINES                    1                0       14    2445  stunted          
24 months   ki1135781-COHORTS          PHILIPPINES                    1                1      121    2445  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         0                0      273     579  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         0                1      104     579  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         1                0       48     579  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         1                1      154     579  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0     3627    8632  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1     2315    8632  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0      766    8632  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1     1924    8632  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0     2378    4752  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1     1018    4752  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0      469    4752  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1      887    4752  stunted          


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/e7de8f24-7dc6-4fde-b3cb-22bdd525931c/b1e2258b-6978-4ee0-af55-8eebf2eb160b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e7de8f24-7dc6-4fde-b3cb-22bdd525931c/b1e2258b-6978-4ee0-af55-8eebf2eb160b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e7de8f24-7dc6-4fde-b3cb-22bdd525931c/b1e2258b-6978-4ee0-af55-8eebf2eb160b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e7de8f24-7dc6-4fde-b3cb-22bdd525931c/b1e2258b-6978-4ee0-af55-8eebf2eb160b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1089109   0.0658611   0.1519607
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.5641026   0.4081509   0.7200542
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.1464646   0.0971115   0.1958178
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.4210526   0.2637391   0.5783662
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.1631799   0.1162451   0.2101148
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.6176471   0.4540001   0.7812940
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1762115   0.1265503   0.2258726
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3703704   0.1878617   0.5528790
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1634615   0.1131059   0.2138172
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6410256   0.4901684   0.7918829
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2312925   0.1830283   0.2795567
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5733333   0.4612465   0.6854202
6 months    ki1000108-IRC              INDIA                          0                    NA                0.2039106   0.1621236   0.2456977
6 months    ki1000108-IRC              INDIA                          1                    NA                0.5510204   0.4115823   0.6904585
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.2727273   0.2122669   0.3331876
6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.7682927   0.7036317   0.8329537
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.3179191   0.2483827   0.3874554
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.4696970   0.3490386   0.5903554
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1574074   0.1375016   0.1773132
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.6236264   0.5893059   0.6579468
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1336207   0.0897810   0.1774604
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.8918919   0.8417992   0.9419846
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1924779   0.1560988   0.2288569
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.6705882   0.5705788   0.7705977
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1197053   0.0923792   0.1470315
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5081967   0.3826358   0.6337577
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1566069   0.1278168   0.1853969
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.5294118   0.4324793   0.6263442
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0719577   0.0603044   0.0836109
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4388489   0.3563316   0.5213662
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.1094080   0.0953393   0.1234768
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.4467005   0.3772609   0.5161401
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.1140351   0.0727079   0.1553623
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.9014084   0.8319497   0.9708672
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1501057   0.1178888   0.1823226
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5604396   0.4583723   0.6625068
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.1854305   0.1233136   0.2475474
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.7065217   0.6132821   0.7997613
6 months    ki1114097-CONTENT          PERU                           0                    NA                0.0609137   0.0274374   0.0943900
6 months    ki1114097-CONTENT          PERU                           1                    NA                0.3888889   0.1631549   0.6146229
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0601970   0.0461538   0.0742402
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.3643411   0.3274113   0.4012709
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1362412   0.1286254   0.1438570
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4004577   0.3679710   0.4329444
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.3189122   0.2867803   0.3510442
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.8947368   0.8459235   0.9435501
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.1288029   0.1203599   0.1372459
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.6071429   0.5735486   0.6407371
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1841693   0.1691276   0.1992110
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6538462   0.5791775   0.7285148
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1214658   0.1146011   0.1283304
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5493730   0.5344401   0.5643060
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1182734   0.1051923   0.1313545
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.5973451   0.5670693   0.6276209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4245810   0.3520004   0.4971616
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.7575758   0.6110146   0.9041369
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.3821990   0.3131338   0.4512641
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.6666667   0.5123370   0.8209963
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1791045   0.1259791   0.2322298
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.5185185   0.3296356   0.7074014
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.3275862   0.2576765   0.3974959
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.6296296   0.4470258   0.8122335
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3504673   0.2864083   0.4145262
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3750000   0.1809059   0.5690941
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6972789   0.6446911   0.7498667
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7922078   0.7014627   0.8829529
24 months   ki1000108-IRC              INDIA                          0                    NA                0.3938547   0.3431797   0.4445298
24 months   ki1000108-IRC              INDIA                          1                    NA                0.6078431   0.4736840   0.7420023
24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.6200000   0.5245799   0.7154201
24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.8358209   0.7468536   0.9247882
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.5154930   0.4634452   0.5675407
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.8243243   0.7375195   0.9111291
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3030888   0.2634762   0.3427014
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5500000   0.4240100   0.6759900
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2207207   0.1821065   0.2593350
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.4857143   0.3685178   0.6029108
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.3027760   0.2798887   0.3256633
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.6363636   0.5652744   0.7074529
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4088670   0.3609969   0.4567371
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6463415   0.5427534   0.7499295
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.6013072   0.5235628   0.6790516
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.8202247   0.7402811   0.9001683
24 months   ki1114097-CONTENT          PERU                           0                    NA                0.0952381   0.0476399   0.1428362
24 months   ki1114097-CONTENT          PERU                           1                    NA                0.4117647   0.1770978   0.6464316
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.3115220   0.2873074   0.3357366
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.5598291   0.4962065   0.6234516
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7391892   0.7075390   0.7708393
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.9727273   0.9551459   0.9903087
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.5000000   0.4856981   0.5143019
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.7925117   0.7611168   0.8239066
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6069264   0.5870043   0.6268485
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.8962963   0.8448572   0.9477353
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.2758621   0.2307067   0.3210174
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.7623762   0.7036304   0.8211221
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.3895995   0.3742134   0.4049855
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.7152416   0.6955173   0.7349660
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2997644   0.2813557   0.3181732
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.6541298   0.6238364   0.6844232


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
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 5.179487   3.1974200    8.390229
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                 1.000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                 2.874773   1.7381963    4.754538
6 months    ki0047075b-MAL-ED          PERU                           0                    0                 1.000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                 3.785068   2.5599890    5.596406
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 2.101852   1.1914205    3.707995
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 3.921569   2.6613346    5.778567
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.000000   1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 2.478823   1.8623509    3.299360
6 months    ki1000108-IRC              INDIA                          0                    0                 1.000000   1.0000000    1.000000
6 months    ki1000108-IRC              INDIA                          1                    0                 2.702265   1.9512389    3.742357
6 months    ki1000109-EE               PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 2.817073   2.2223658    3.570925
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 1.477410   1.0543281    2.070268
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 3.961862   3.4899143    4.497631
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.000000   1.0000000    1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 6.674804   4.7849562    9.311058
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 3.483976   2.7385169    4.432358
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 4.245397   3.0326883    5.943043
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 3.380515   2.6079593    4.381924
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 6.098709   4.7584384    7.816483
6 months    ki1101329-Keneba           GAMBIA                         0                    0                 1.000000   1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 4.082886   3.3369644    4.995545
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.000000   1.0000000    1.000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 7.904659   5.4572418   11.449672
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000    1.000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 3.733633   2.8176358    4.947414
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 3.810171   2.6581453    5.461478
6 months    ki1114097-CONTENT          PERU                           0                    0                 1.000000   1.0000000    1.000000
6 months    ki1114097-CONTENT          PERU                           1                    0                 6.384259   2.8705001   14.199186
6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.000000   1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 6.052476   4.8183768    7.602657
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 2.939329   2.6635589    3.243651
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 2.805590   2.5018655    3.146185
6 months    ki1135781-COHORTS          INDIA                          0                    0                 1.000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 4.713736   4.3262453    5.135932
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 3.550245   3.0852032    4.085385
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 4.522862   4.2643554    4.797040
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 5.050546   4.4566729    5.723555
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.784290   1.3783052    2.309860
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                 1.000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 1.744292   1.3004050    2.339698
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 2.895062   1.8098496    4.630983
24 months   ki0047075b-MAL-ED          PERU                           0                    0                 1.000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                 1.922027   1.3408531    2.755103
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.070000   0.6180093    1.852561
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.136142   0.9905374    1.303150
24 months   ki1000108-IRC              INDIA                          0                    0                 1.000000   1.0000000    1.000000
24 months   ki1000108-IRC              INDIA                          1                    0                 1.543318   1.1953712    1.992545
24 months   ki1000109-EE               PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
24 months   ki1000109-EE               PAKISTAN                       1                    0                 1.348098   1.1180300    1.625510
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.599099   1.3820286    1.850264
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.814650   1.3939732    2.362279
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 2.200583   1.6334368    2.964649
24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                 2.101764   1.8365582    2.405266
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.580811   1.2962297    1.927871
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 1.364069   1.1601610    1.603816
24 months   ki1114097-CONTENT          PERU                           0                    0                 1.000000   1.0000000    1.000000
24 months   ki1114097-CONTENT          PERU                           1                    0                 4.323529   2.0260059    9.226482
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.797077   1.5659228    2.062353
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.315938   1.2561782    1.378541
24 months   ki1135781-COHORTS          INDIA                          0                    0                 1.000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                 1.585023   1.5094378    1.664394
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.476779   1.3823001    1.577716
24 months   ki1148112-LCNI-5           MALAWI                         0                    0                 1.000000   1.0000000    1.000000
24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 2.763614   2.3062451    3.311687
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.835838   1.7533518    1.922206
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 2.182146   2.0227436    2.354110


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0736617    0.0399679   0.1073556
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.0442133    0.0146961   0.0737306
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.0566003    0.0288948   0.0843058
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0206389   -0.0007766   0.0420545
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0754049    0.0421764   0.1086333
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0695205    0.0410071   0.0980339
6 months    ki1000108-IRC              INDIA                          0                    NA                0.0417896    0.0211051   0.0624742
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.2178893    0.1716324   0.2641463
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.0419136    0.0025019   0.0813252
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1270237    0.1101277   0.1439197
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2953267    0.2499623   0.3406911
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0756785    0.0532727   0.0980844
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0392351    0.0232439   0.0552262
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0531834    0.0358761   0.0704906
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0251345    0.0181442   0.0321248
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0318079    0.0239010   0.0397147
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.1869683    0.1443605   0.2295760
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0662063    0.0449066   0.0875061
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.1972856    0.1442454   0.2503257
6 months    ki1114097-CONTENT          PERU                           0                    NA                0.0274584    0.0048058   0.0501110
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0024893    0.0012051   0.0037736
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0266380    0.0228802   0.0303959
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0910774    0.0748877   0.1072670
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0566198    0.0511258   0.0621138
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0270567    0.0210361   0.0330773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1299172    0.1242189   0.1356155
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1344693    0.1230267   0.1459120
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0518341    0.0216109   0.0820572
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0451138    0.0150714   0.0751562
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.0401938    0.0129281   0.0674595
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0405730    0.0106796   0.0704664
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0024739   -0.0181585   0.0231063
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0197022   -0.0024163   0.0418207
24 months   ki1000108-IRC              INDIA                          0                    NA                0.0266831    0.0075301   0.0458362
24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.0865868    0.0318282   0.1413455
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0532716    0.0326077   0.0739355
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0256309    0.0106070   0.0406548
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0360886    0.0175345   0.0546427
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0340356    0.0250479   0.0430233
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0399035    0.0191703   0.0606367
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.0805110    0.0373888   0.1236332
24 months   ki1114097-CONTENT          PERU                           0                    NA                0.0328107    0.0039066   0.0617148
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0354292    0.0248452   0.0460132
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0720258    0.0591228   0.0849288
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0351321    0.0302661   0.0399981
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0159775    0.0119597   0.0199952
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.1697338    0.1377091   0.2017584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1014802    0.0934046   0.1095559
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1011194    0.0902982   0.1119407


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4034653    0.2203556   0.5435693
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.2318743    0.0699722   0.3655920
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.2575314    0.1294746   0.3667506
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1048458   -0.0088343   0.2057159
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3156780    0.1742730   0.4328675
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2311087    0.1328758   0.3182131
6 months    ki1000108-IRC              INDIA                          0                    NA                0.1700838    0.0840488   0.2480375
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.4441133    0.3404247   0.5315015
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.1164807   -0.0001117   0.2194808
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.4465887    0.3872813   0.5001555
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.6884916    0.5865198   0.7653153
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2822179    0.1986919   0.3570374
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2468539    0.1478435   0.3343605
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2535073    0.1717449   0.3271985
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2588725    0.1912212   0.3208651
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.2252428    0.1713755   0.2756082
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.6211501    0.4925719   0.7171476
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.3060687    0.2089183   0.3912884
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.5154881    0.3684446   0.6282959
6 months    ki1114097-CONTENT          PERU                           0                    NA                0.3107133    0.0459028   0.5020255
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0397111    0.0162372   0.0626249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1635448    0.1410853   0.1854169
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2221455    0.1813324   0.2609240
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.3053554    0.2779773   0.3316953
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1280937    0.0999714   0.1553373
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.5168099    0.4971087   0.5357393
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.5320404    0.4900866   0.5705424
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1088003    0.0418131   0.1711044
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.1055756    0.0317818   0.1737452
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1832836    0.0541977   0.2947515
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.1102050    0.0250883   0.1878905
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0070093   -0.0532053   0.0637813
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0274794   -0.0040673   0.0580350
24 months   ki1000108-IRC              INDIA                          0                    NA                0.0634500    0.0165643   0.1081005
24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.1225424    0.0382945   0.1994099
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0936620    0.0554209   0.1303549
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0779720    0.0312083   0.1224783
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1405269    0.0664728   0.2087065
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.1010524    0.0740429   0.1272740
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0889174    0.0411061   0.1343448
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.1180828    0.0501048   0.1811960
24 months   ki1114097-CONTENT          PERU                           0                    NA                0.2562358    0.0179802   0.4366864
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1021157    0.0711216   0.1320756
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0887875    0.0713595   0.1058885
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0656513    0.0563430   0.0748677
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0256500    0.0190710   0.0321848
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.3809142    0.3047524   0.4487328
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2066472    0.1891219   0.2237937
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2522412    0.2245605   0.2789337

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

**Outcome Variable:** ever_sstunted

## Predictor Variables

**Intervention Variable:** meducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        meducyrs    ever_sstunted   n_cell       n  outcome_variable 
------------  -------------------------  -----------------------------  ---------  --------------  -------  ------  -----------------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                    0       64     214  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                    1       14     214  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                     0       55     214  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                     1       15     214  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                  0       55     214  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                  1       11     214  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                    0       69     232  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                    1       10     232  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                     0       60     232  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                     1        3     232  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                  0       81     232  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                  1        9     232  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          INDIA                          High                    0       50     220  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          INDIA                          High                    1       13     220  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                     0       59     220  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                     1       17     220  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                  0       64     220  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                  1       17     220  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                    0       48     225  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                    1        5     225  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                     0       88     225  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                     1        8     225  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                  0       70     225  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                  1        6     225  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          PERU                           High                    0       71     302  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          PERU                           High                    1       20     302  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          PERU                           Low                     0       83     302  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          PERU                           Low                     1       21     302  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                  0       84     302  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                  1       23     302  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                    0       75     314  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                    1       20     314  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                     0      111     314  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                     1       39     314  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                  0       55     314  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                  1       14     314  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                    0        6     217  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                    1        5     217  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                     0       27     217  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                     1       37     217  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                  0       77     217  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                  1       65     217  ever_sstunted    
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                    0       65     373  ever_sstunted    
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                    1       93     373  ever_sstunted    
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                     0       37     373  ever_sstunted    
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                     1       69     373  ever_sstunted    
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                  0       34     373  ever_sstunted    
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                  1       75     373  ever_sstunted    
0-24 months   ki1000108-IRC              INDIA                          High                    0      101     410  ever_sstunted    
0-24 months   ki1000108-IRC              INDIA                          High                    1       23     410  ever_sstunted    
0-24 months   ki1000108-IRC              INDIA                          Low                     0      111     410  ever_sstunted    
0-24 months   ki1000108-IRC              INDIA                          Low                     1       36     410  ever_sstunted    
0-24 months   ki1000108-IRC              INDIA                          Medium                  0       96     410  ever_sstunted    
0-24 months   ki1000108-IRC              INDIA                          Medium                  1       43     410  ever_sstunted    
0-24 months   ki1000109-EE               PAKISTAN                       High                    0        8     376  ever_sstunted    
0-24 months   ki1000109-EE               PAKISTAN                       High                    1        7     376  ever_sstunted    
0-24 months   ki1000109-EE               PAKISTAN                       Low                     0      122     376  ever_sstunted    
0-24 months   ki1000109-EE               PAKISTAN                       Low                     1      206     376  ever_sstunted    
0-24 months   ki1000109-EE               PAKISTAN                       Medium                  0       20     376  ever_sstunted    
0-24 months   ki1000109-EE               PAKISTAN                       Medium                  1       13     376  ever_sstunted    
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                    0      265    1533  ever_sstunted    
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                    1       58    1533  ever_sstunted    
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                     0      401    1533  ever_sstunted    
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                     1      295    1533  ever_sstunted    
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                  0      360    1533  ever_sstunted    
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                  1      154    1533  ever_sstunted    
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                    0       27     418  ever_sstunted    
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                    1       14     418  ever_sstunted    
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                     0      167     418  ever_sstunted    
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                     1      165     418  ever_sstunted    
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                  0       23     418  ever_sstunted    
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                  1       22     418  ever_sstunted    
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                    0      138     629  ever_sstunted    
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                    1       41     629  ever_sstunted    
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                     0      139     629  ever_sstunted    
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                     1       91     629  ever_sstunted    
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                  0      156     629  ever_sstunted    
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                  1       64     629  ever_sstunted    
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                    0      217     700  ever_sstunted    
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                    1       18     700  ever_sstunted    
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                     0      180     700  ever_sstunted    
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                     1       34     700  ever_sstunted    
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                  0      208     700  ever_sstunted    
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                  1       43     700  ever_sstunted    
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                    0      234     758  ever_sstunted    
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                    1       20     758  ever_sstunted    
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                     0      202     758  ever_sstunted    
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                     1       40     758  ever_sstunted    
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                  0      223     758  ever_sstunted    
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                  1       39     758  ever_sstunted    
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                    0      568    2386  ever_sstunted    
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                    1       53    2386  ever_sstunted    
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                     0       71    2386  ever_sstunted    
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                     1       11    2386  ever_sstunted    
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                  0     1510    2386  ever_sstunted    
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                  1      173    2386  ever_sstunted    
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                    0       96     282  ever_sstunted    
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                    1       22     282  ever_sstunted    
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                     0       57     282  ever_sstunted    
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                     1       19     282  ever_sstunted    
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                  0       76     282  ever_sstunted    
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                  1       12     282  ever_sstunted    
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                    0       71     695  ever_sstunted    
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                    1       14     695  ever_sstunted    
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                     0      360     695  ever_sstunted    
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                     1      126     695  ever_sstunted    
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                  0       95     695  ever_sstunted    
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                  1       29     695  ever_sstunted    
0-24 months   ki1119695-PROBIT           BELARUS                        High                    0     2763   16897  ever_sstunted    
0-24 months   ki1119695-PROBIT           BELARUS                        High                    1       77   16897  ever_sstunted    
0-24 months   ki1119695-PROBIT           BELARUS                        Low                     0     5788   16897  ever_sstunted    
0-24 months   ki1119695-PROBIT           BELARUS                        Low                     1      312   16897  ever_sstunted    
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                  0     7680   16897  ever_sstunted    
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                  1      277   16897  ever_sstunted    
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                    0     6498   14054  ever_sstunted    
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                    1     1126   14054  ever_sstunted    
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                     0     2367   14054  ever_sstunted    
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                     1      592   14054  ever_sstunted    
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                  0     2824   14054  ever_sstunted    
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                  1      647   14054  ever_sstunted    
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                    0      161    1341  ever_sstunted    
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                    1      124    1341  ever_sstunted    
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                     0      326    1341  ever_sstunted    
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                     1      310    1341  ever_sstunted    
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                  0      232    1341  ever_sstunted    
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                  1      188    1341  ever_sstunted    
0-24 months   ki1135781-COHORTS          INDIA                          High                    0      761    5852  ever_sstunted    
0-24 months   ki1135781-COHORTS          INDIA                          High                    1       32    5852  ever_sstunted    
0-24 months   ki1135781-COHORTS          INDIA                          Low                     0     1530    5852  ever_sstunted    
0-24 months   ki1135781-COHORTS          INDIA                          Low                     1      426    5852  ever_sstunted    
0-24 months   ki1135781-COHORTS          INDIA                          Medium                  0     2788    5852  ever_sstunted    
0-24 months   ki1135781-COHORTS          INDIA                          Medium                  1      315    5852  ever_sstunted    
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                    0      885    3058  ever_sstunted    
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                    1      288    3058  ever_sstunted    
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                     0      481    3058  ever_sstunted    
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                     1      422    3058  ever_sstunted    
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                  0      603    3058  ever_sstunted    
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                  1      379    3058  ever_sstunted    
0-24 months   ki1148112-LCNI-5           MALAWI                         High                    0      251     814  ever_sstunted    
0-24 months   ki1148112-LCNI-5           MALAWI                         High                    1       47     814  ever_sstunted    
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                     0      191     814  ever_sstunted    
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                     1       70     814  ever_sstunted    
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                  0      203     814  ever_sstunted    
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                  1       52     814  ever_sstunted    
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                    0     7817   27193  ever_sstunted    
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                    1     1210   27193  ever_sstunted    
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                     0     7779   27193  ever_sstunted    
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                     1     2088   27193  ever_sstunted    
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                  0     6577   27193  ever_sstunted    
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                  1     1722   27193  ever_sstunted    
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                    0     1623    5419  ever_sstunted    
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                    1      278    5419  ever_sstunted    
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                     0     1328    5419  ever_sstunted    
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                     1      457    5419  ever_sstunted    
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                  0     1365    5419  ever_sstunted    
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                  1      368    5419  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                    0       71     214  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                    1        7     214  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                     0       63     214  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                     1        7     214  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                  0       64     214  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                  1        2     214  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                    0       71     232  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                    1        8     232  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                     0       61     232  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                     1        2     232  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                  0       83     232  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                  1        7     232  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          INDIA                          High                    0       60     220  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          INDIA                          High                    1        3     220  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                     0       72     220  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                     1        4     220  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                  0       72     220  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                  1        9     220  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                    0       52     225  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                    1        1     225  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                     0       92     225  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                     1        4     225  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                  0       73     225  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                  1        3     225  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          PERU                           High                    0       78     302  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          PERU                           High                    1       13     302  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          PERU                           Low                     0       94     302  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          PERU                           Low                     1       10     302  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                  0       92     302  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                  1       15     302  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                    0       85     314  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                    1       10     314  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                     0      136     314  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                     1       14     314  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                  0       64     314  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                  1        5     314  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                    0       11     217  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                    1        0     217  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                     0       55     217  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                     1        9     217  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                  0      125     217  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                  1       17     217  ever_sstunted    
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                    0      125     368  ever_sstunted    
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                    1       32     368  ever_sstunted    
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                     0       76     368  ever_sstunted    
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                     1       28     368  ever_sstunted    
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                  0       76     368  ever_sstunted    
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                  1       31     368  ever_sstunted    
0-6 months    ki1000108-IRC              INDIA                          High                    0      113     410  ever_sstunted    
0-6 months    ki1000108-IRC              INDIA                          High                    1       11     410  ever_sstunted    
0-6 months    ki1000108-IRC              INDIA                          Low                     0      126     410  ever_sstunted    
0-6 months    ki1000108-IRC              INDIA                          Low                     1       21     410  ever_sstunted    
0-6 months    ki1000108-IRC              INDIA                          Medium                  0      109     410  ever_sstunted    
0-6 months    ki1000108-IRC              INDIA                          Medium                  1       30     410  ever_sstunted    
0-6 months    ki1000109-EE               PAKISTAN                       High                    0        9     376  ever_sstunted    
0-6 months    ki1000109-EE               PAKISTAN                       High                    1        6     376  ever_sstunted    
0-6 months    ki1000109-EE               PAKISTAN                       Low                     0      186     376  ever_sstunted    
0-6 months    ki1000109-EE               PAKISTAN                       Low                     1      142     376  ever_sstunted    
0-6 months    ki1000109-EE               PAKISTAN                       Medium                  0       22     376  ever_sstunted    
0-6 months    ki1000109-EE               PAKISTAN                       Medium                  1       11     376  ever_sstunted    
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                    0      296    1530  ever_sstunted    
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                    1       27    1530  ever_sstunted    
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                     0      567    1530  ever_sstunted    
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                     1      128    1530  ever_sstunted    
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                  0      438    1530  ever_sstunted    
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                  1       74    1530  ever_sstunted    
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                    0       38     416  ever_sstunted    
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                    1        2     416  ever_sstunted    
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                     0      287     416  ever_sstunted    
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                     1       44     416  ever_sstunted    
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                  0       41     416  ever_sstunted    
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                  1        4     416  ever_sstunted    
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                    0      163     629  ever_sstunted    
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                    1       16     629  ever_sstunted    
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                     0      203     629  ever_sstunted    
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                     1       27     629  ever_sstunted    
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium                  0      204     629  ever_sstunted    
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium                  1       16     629  ever_sstunted    
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                    0      231     700  ever_sstunted    
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                    1        4     700  ever_sstunted    
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                     0      204     700  ever_sstunted    
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                     1       10     700  ever_sstunted    
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                  0      234     700  ever_sstunted    
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                  1       17     700  ever_sstunted    
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                    0      244     758  ever_sstunted    
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                    1       10     758  ever_sstunted    
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                     0      226     758  ever_sstunted    
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                     1       16     758  ever_sstunted    
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                  0      241     758  ever_sstunted    
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                  1       21     758  ever_sstunted    
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                    0      594    2386  ever_sstunted    
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                    1       27    2386  ever_sstunted    
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                     0       79    2386  ever_sstunted    
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                     1        3    2386  ever_sstunted    
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                  0     1610    2386  ever_sstunted    
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                  1       73    2386  ever_sstunted    
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                    0       97     265  ever_sstunted    
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                    1       15     265  ever_sstunted    
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                     0       70     265  ever_sstunted    
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                     1        4     265  ever_sstunted    
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium                  0       74     265  ever_sstunted    
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium                  1        5     265  ever_sstunted    
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                    0       80     695  ever_sstunted    
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                    1        5     695  ever_sstunted    
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                     0      438     695  ever_sstunted    
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                     1       48     695  ever_sstunted    
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                  0      117     695  ever_sstunted    
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                  1        7     695  ever_sstunted    
0-6 months    ki1119695-PROBIT           BELARUS                        High                    0     2818   16893  ever_sstunted    
0-6 months    ki1119695-PROBIT           BELARUS                        High                    1       22   16893  ever_sstunted    
0-6 months    ki1119695-PROBIT           BELARUS                        Low                     0     5970   16893  ever_sstunted    
0-6 months    ki1119695-PROBIT           BELARUS                        Low                     1      128   16893  ever_sstunted    
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                  0     7865   16893  ever_sstunted    
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                  1       90   16893  ever_sstunted    
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                    0     6976   14037  ever_sstunted    
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                    1      641   14037  ever_sstunted    
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                     0     2653   14037  ever_sstunted    
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                     1      301   14037  ever_sstunted    
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                  0     3126   14037  ever_sstunted    
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                  1      340   14037  ever_sstunted    
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                    0      207    1078  ever_sstunted    
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                    1       17    1078  ever_sstunted    
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                     0      448    1078  ever_sstunted    
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                     1       66    1078  ever_sstunted    
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                  0      314    1078  ever_sstunted    
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                  1       26    1078  ever_sstunted    
0-6 months    ki1135781-COHORTS          INDIA                          High                    0      741    5662  ever_sstunted    
0-6 months    ki1135781-COHORTS          INDIA                          High                    1       12    5662  ever_sstunted    
0-6 months    ki1135781-COHORTS          INDIA                          Low                     0     1775    5662  ever_sstunted    
0-6 months    ki1135781-COHORTS          INDIA                          Low                     1      134    5662  ever_sstunted    
0-6 months    ki1135781-COHORTS          INDIA                          Medium                  0     2878    5662  ever_sstunted    
0-6 months    ki1135781-COHORTS          INDIA                          Medium                  1      122    5662  ever_sstunted    
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                    0     1130    3058  ever_sstunted    
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                    1       43    3058  ever_sstunted    
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                     0      824    3058  ever_sstunted    
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                     1       79    3058  ever_sstunted    
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                  0      913    3058  ever_sstunted    
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                  1       69    3058  ever_sstunted    
0-6 months    ki1148112-LCNI-5           MALAWI                         High                    0       85     267  ever_sstunted    
0-6 months    ki1148112-LCNI-5           MALAWI                         High                    1        2     267  ever_sstunted    
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                     0       83     267  ever_sstunted    
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                     1        9     267  ever_sstunted    
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                  0       80     267  ever_sstunted    
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                  1        8     267  ever_sstunted    
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                    0     8054   27127  ever_sstunted    
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                    1      941   27127  ever_sstunted    
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                     0     8182   27127  ever_sstunted    
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                     1     1665   27127  ever_sstunted    
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                  0     6889   27127  ever_sstunted    
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                  1     1396   27127  ever_sstunted    
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                    0     1661    5111  ever_sstunted    
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                    1      135    5111  ever_sstunted    
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                     0     1463    5111  ever_sstunted    
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                     1      217    5111  ever_sstunted    
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                  0     1469    5111  ever_sstunted    
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                  1      166    5111  ever_sstunted    


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
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/9cba1eea-e6d3-49aa-b5ac-28330f24839d/ca59ea20-2d60-4b8e-80e3-ea0e28849b86/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9cba1eea-e6d3-49aa-b5ac-28330f24839d/ca59ea20-2d60-4b8e-80e3-ea0e28849b86/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9cba1eea-e6d3-49aa-b5ac-28330f24839d/ca59ea20-2d60-4b8e-80e3-ea0e28849b86/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9cba1eea-e6d3-49aa-b5ac-28330f24839d/ca59ea20-2d60-4b8e-80e3-ea0e28849b86/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1794872   0.0941227   0.2648517
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2142857   0.1179372   0.3106342
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.1666667   0.0765455   0.2567879
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.2063492   0.1061918   0.3065066
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.2236842   0.1297838   0.3175846
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2098765   0.1209924   0.2987607
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.0943396   0.0154705   0.1732088
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.0833333   0.0279225   0.1387442
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.0789474   0.0181871   0.1397076
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.2197802   0.1345585   0.3050020
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.2019231   0.1246431   0.2792031
0-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.2149533   0.1369889   0.2929176
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.2105263   0.1284154   0.2926372
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.2600000   0.1896931   0.3303069
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.2028986   0.1078572   0.2979399
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.4545455   0.1596129   0.7494780
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.5781250   0.4568521   0.6993979
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.4577465   0.3756129   0.5398800
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.5886076   0.5117753   0.6654398
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.6509434   0.5600782   0.7418086
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.6880734   0.6009848   0.7751620
0-24 months   ki1000108-IRC              INDIA                          High                 NA                0.1854839   0.1169870   0.2539807
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.2448980   0.1752970   0.3144989
0-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.3093525   0.2324172   0.3862879
0-24 months   ki1000109-EE               PAKISTAN                       High                 NA                0.4666667   0.2138629   0.7194704
0-24 months   ki1000109-EE               PAKISTAN                       Low                  NA                0.6280488   0.5756732   0.6804244
0-24 months   ki1000109-EE               PAKISTAN                       Medium               NA                0.3939394   0.2270064   0.5608724
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1795666   0.1237100   0.2354231
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4238506   0.3892575   0.4584436
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2996109   0.2692257   0.3299961
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3414634   0.1961391   0.4867877
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.4969880   0.4431410   0.5508349
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4888889   0.3426629   0.6351149
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.2290503   0.1674411   0.2906595
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.3956522   0.3324066   0.4588977
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.2909091   0.2308454   0.3509728
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0765957   0.0425688   0.1106227
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1588785   0.1098652   0.2078918
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1713147   0.1246688   0.2179607
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0787402   0.0455960   0.1118843
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1652893   0.1184600   0.2121185
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1488550   0.1057261   0.1919838
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0853462   0.0633669   0.1073255
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1341463   0.0603655   0.2079272
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1027926   0.0882807   0.1173045
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                0.1864407   0.1160454   0.2568359
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                0.2500000   0.1524756   0.3475244
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                0.1363636   0.0645358   0.2081915
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1647059   0.0857971   0.2436147
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2592593   0.2202702   0.2982483
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2338710   0.1593139   0.3084281
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0271127   0.0191807   0.0350447
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0511475   0.0401138   0.0621813
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0348121   0.0258189   0.0438054
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1476915   0.1397272   0.1556558
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.2000676   0.1856529   0.2144823
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1864016   0.1734458   0.1993575
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.4350877   0.3775084   0.4926670
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.4874214   0.4485604   0.5262824
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.4476190   0.4000462   0.4951919
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0403531   0.0266555   0.0540506
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.2177914   0.1994985   0.2360843
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.1015147   0.0908876   0.1121417
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2455243   0.2208900   0.2701586
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.4673311   0.4347837   0.4998785
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.3859470   0.3554940   0.4164001
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.1577181   0.1163109   0.1991254
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.2681992   0.2144193   0.3219791
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.2039216   0.1544387   0.2534044
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1340423   0.1260432   0.1420414
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2116145   0.2032588   0.2199702
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2074949   0.1978468   0.2171430
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1462388   0.1287477   0.1637299
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2560224   0.2335766   0.2784682
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2123485   0.1915917   0.2331053
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                0.1428571   0.0708418   0.2148725
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                0.0961538   0.0394017   0.1529060
0-6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                0.1401869   0.0742950   0.2060788
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1052632   0.0434523   0.1670740
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.0933333   0.0467063   0.1399603
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.0724638   0.0111946   0.1337330
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.2038217   0.1407231   0.2669202
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.2692308   0.1838668   0.3545948
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.2897196   0.2036498   0.3757895
0-6 months    ki1000108-IRC              INDIA                          High                 NA                0.0887097   0.0386046   0.1388147
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                0.1428571   0.0862205   0.1994938
0-6 months    ki1000108-IRC              INDIA                          Medium               NA                0.2158273   0.1473527   0.2843020
0-6 months    ki1000109-EE               PAKISTAN                       High                 NA                0.4000000   0.1517516   0.6482484
0-6 months    ki1000109-EE               PAKISTAN                       Low                  NA                0.4329268   0.3792340   0.4866197
0-6 months    ki1000109-EE               PAKISTAN                       Medium               NA                0.3333333   0.1722824   0.4943842
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0835913   0.0558678   0.1113149
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1841727   0.1559205   0.2124248
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.1445313   0.1256588   0.1634037
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.0893855   0.0475574   0.1312135
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.1173913   0.0757589   0.1590237
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.0727273   0.0383846   0.1070700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0393701   0.0154381   0.0633021
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0661157   0.0347882   0.0974432
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0801527   0.0472523   0.1130531
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.0588235   0.0087668   0.1088802
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.0987654   0.0722216   0.1253093
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.0564516   0.0158007   0.0971025
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0077465   0.0036452   0.0118477
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0209905   0.0146698   0.0273111
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0113136   0.0078026   0.0148247
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0841539   0.0779191   0.0903886
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1018957   0.0909864   0.1128051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0980958   0.0881931   0.1079985
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0758929   0.0411962   0.1105895
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1284047   0.0994702   0.1573392
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0764706   0.0482099   0.1047313
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.0159363   0.0069910   0.0248815
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.0701938   0.0587326   0.0816550
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.0406667   0.0335981   0.0477352
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0366581   0.0259023   0.0474140
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0874862   0.0690545   0.1059178
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0702648   0.0542761   0.0862534
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1046137   0.0975531   0.1116742
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1690870   0.1614708   0.1767033
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1684973   0.1596681   0.1773264
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0751670   0.0611476   0.0891865
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1291667   0.1118691   0.1464643
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1015291   0.0855700   0.1174881


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1869159   0.1345620   0.2392698
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2136364   0.1593519   0.2679208
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.0844444   0.0480318   0.1208571
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.2119205   0.1657530   0.2580880
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2324841   0.1856873   0.2792809
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4930876   0.4264146   0.5597605
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6353887   0.5864772   0.6843003
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.2487805   0.2068840   0.2906770
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.6010638   0.5515023   0.6506253
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3307241   0.3024794   0.3589688
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4808612   0.4329065   0.5288160
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3116057   0.2753823   0.3478292
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1357143   0.1103250   0.1611036
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1306069   0.1066024   0.1546113
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0993294   0.0873254   0.1113334
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.1879433   0.1422658   0.2336207
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2431655   0.2112486   0.2750823
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0394153   0.0310085   0.0478221
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1682795   0.1620941   0.1744649
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4638330   0.4371320   0.4905339
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1320916   0.1234158   0.1407674
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3561151   0.3391405   0.3730897
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2076167   0.1797361   0.2354973
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1846063   0.1789984   0.1902143
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2035431   0.1916695   0.2154167
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.1258278   0.0883606   0.1632951
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.0923567   0.0602816   0.1244318
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2472826   0.2031431   0.2914222
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1512195   0.1164988   0.1859402
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.4228723   0.3728720   0.4728727
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1496732   0.1307571   0.1685893
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0937997   0.0709973   0.1166021
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0620053   0.0448256   0.0791849
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0863309   0.0654358   0.1072261
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0142071   0.0107237   0.0176904
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0913301   0.0865643   0.0960959
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1011132   0.0831080   0.1191183
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0473331   0.0418015   0.0528647
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0624591   0.0538810   0.0710373
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1475283   0.1424745   0.1525821
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1013500   0.0923758   0.1103243


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.1938776   0.6204646   2.297220
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              0.9285714   0.4519267   1.907931
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.0840081   0.5706020   2.059358
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.0170940   0.5340762   1.936952
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              0.8833333   0.3035369   2.570619
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              0.8368421   0.2686218   2.607028
0-24 months   ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  High              0.9187500   0.5328242   1.584203
0-24 months   ki0047075b-MAL-ED          PERU                           Medium               High              0.9780374   0.5751293   1.663204
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              1.2350000   0.7683370   1.985099
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              0.9637681   0.5239063   1.772930
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              1.2718750   0.6431191   2.515344
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0070423   0.5136638   1.974315
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.1059038   0.9135203   1.338802
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.1689849   0.9746433   1.402078
0-24 months   ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          Low                  High              1.3203194   0.8285199   2.104045
0-24 months   ki1000108-IRC              INDIA                          Medium               High              1.6678136   1.0685368   2.603188
0-24 months   ki1000109-EE               PAKISTAN                       High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE               PAKISTAN                       Low                  High              1.3458188   0.7779437   2.328225
0-24 months   ki1000109-EE               PAKISTAN                       Medium               High              0.8441558   0.4243530   1.679260
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              2.3604092   1.6701260   3.335995
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.6685227   1.2353446   2.253597
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.4554647   0.9381530   2.258030
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.4317460   0.8510477   2.408674
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.7273595   1.2632688   2.361944
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.2700665   0.9048242   1.782743
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              2.0742471   1.2077366   3.562450
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              2.2366091   1.3283221   3.765969
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              2.0991736   1.2638303   3.486647
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.8904580   1.1340665   3.151342
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.5717902   0.8563340   2.885001
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.2044193   0.8979049   1.615567
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  High              1.3409091   0.7791508   2.307688
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               High              0.7314050   0.3825585   1.398357
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.5740741   0.9526851   2.600764
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.4199309   0.7986324   2.524570
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.8864807   1.4677227   2.424715
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.2839793   0.9477667   1.739461
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.3546317   1.2380468   1.482195
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.2621012   1.1558164   1.378159
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              1.1202830   0.9599071   1.307454
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.0288018   0.8681961   1.219118
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              5.3971427   3.8045210   7.656456
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              2.5156599   1.7635289   3.588569
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.9034007   1.6845626   2.150668
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.5719302   1.3835619   1.785944
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.7004973   1.2220907   2.366184
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              1.2929495   0.9043147   1.848602
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.5787139   1.4766317   1.687853
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.5479804   1.4380540   1.666310
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.7507144   1.5116197   2.027627
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.4520667   1.2436701   1.695384
0-6 months    ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  High              0.6730769   0.3097171   1.462730
0-6 months    ki0047075b-MAL-ED          PERU                           Medium               High              0.9813084   0.4925750   1.954964
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              0.8866667   0.4101435   1.916836
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              0.6884058   0.2459086   1.927149
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.3209135   0.8480530   2.057433
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.4214369   0.9255251   2.183067
0-6 months    ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          Low                  High              1.6103896   0.8076745   3.210891
0-6 months    ki1000108-IRC              INDIA                          Medium               High              2.4329627   1.2728808   4.650323
0-6 months    ki1000109-EE               PAKISTAN                       High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE               PAKISTAN                       Low                  High              1.0823171   0.5747687   2.038055
0-6 months    ki1000109-EE               PAKISTAN                       Medium               High              0.8333333   0.3795241   1.829777
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              2.2032507   1.6799874   2.889494
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.7290220   1.3190013   2.266500
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.3133152   0.7300794   2.362478
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High              0.8136364   0.4185140   1.581797
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.6793388   0.7769893   3.629624
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              2.0358779   0.9776972   4.239348
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.6790123   0.6878462   4.098420
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.9596774   0.3147689   2.925895
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              2.7096812   1.6794979   4.371766
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.4604880   0.7522758   2.835430
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.2108265   1.0630100   1.379198
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1656718   1.0284765   1.321168
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              1.6919203   1.0162996   2.816684
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              1.0076125   0.5597389   1.813851
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              4.4046615   2.4548897   7.903020
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              2.5518330   1.4179327   4.592497
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              2.3865410   1.6630121   3.424857
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.9167574   1.3222427   2.778582
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.6162995   1.4973062   1.744749
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.6106621   1.4841348   1.747976
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.7183951   1.3641302   2.164663
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.3507124   1.0599604   1.721219


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0074287   -0.0612440   0.0761014
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0072872   -0.0777598   0.0923342
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0098952   -0.0778345   0.0580441
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.0078597   -0.0786926   0.0629732
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0219578   -0.0477019   0.0916174
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0385421   -0.2488804   0.3259646
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0467811   -0.0106160   0.1041783
0-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0632966    0.0032203   0.1233729
0-24 months   ki1000109-EE               PAKISTAN                       High                 NA                 0.1343972   -0.1131243   0.3819187
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1511575    0.0956574   0.2066576
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1393978    0.0005604   0.2782352
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0825554    0.0282647   0.1368462
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0591185    0.0271022   0.0911349
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0518667    0.0212313   0.0825021
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0139832   -0.0054003   0.0333667
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                 0.0015026   -0.0523005   0.0553056
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0784596    0.0028141   0.1541050
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0123026    0.0052972   0.0193080
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0205880    0.0148547   0.0263213
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0287452   -0.0224319   0.0799224
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0917385    0.0771768   0.1063002
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1105908    0.0898681   0.1313135
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0498986    0.0147346   0.0850626
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0505640    0.0439754   0.0571526
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0573043    0.0423538   0.0722547
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.0170293   -0.0758897   0.0418310
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0129065   -0.0632808   0.0374679
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0434610   -0.0068633   0.0937852
0-6 months    ki1000108-IRC              INDIA                          High                 NA                 0.0625098    0.0156325   0.1093872
0-6 months    ki1000109-EE               PAKISTAN                       High                 NA                 0.0228723   -0.2204591   0.2662038
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0660819    0.0504749   0.0816888
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0044142   -0.0312754   0.0401038
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0226352    0.0006343   0.0446361
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0275074   -0.0207563   0.0757711
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0064606    0.0022081   0.0107131
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0071762    0.0027719   0.0115805
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0252203   -0.0068380   0.0572787
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0313968    0.0219452   0.0408485
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0258010    0.0157750   0.0358270
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0429146    0.0370821   0.0487471
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0261830    0.0144409   0.0379250


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0397436   -0.4076927   0.3449619
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0341101   -0.4584861   0.3603345
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.1171797   -1.2929418   0.4556815
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.0370879   -0.4314167   0.2486106
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0944484   -0.2603274   0.3493567
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0781648   -0.7350273   0.5102209
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0736260   -0.0216950   0.1600539
0-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.2544276   -0.0280824   0.4593057
0-24 months   ki1000109-EE               PAKISTAN                       High                 NA                 0.2235988   -0.3205244   0.5435156
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.4570502    0.2671526   0.5977410
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.2898920   -0.0670519   0.5274331
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.2649356    0.0694820   0.4193345
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.4356103    0.1606001   0.6205197
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.3971208    0.1242822   0.5849538
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1407761   -0.0775497   0.3148662
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                 0.0079949   -0.3238570   0.2566613
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.3226592   -0.0696004   0.5710637
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.3121278    0.1359509   0.4523828
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1223440    0.0878037   0.1555765
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0619733   -0.0551536   0.1660985
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.6945067    0.5743646   0.7807369
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3105479    0.2503186   0.3659385
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.2403399    0.0529273   0.3906662
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.2739018    0.2375884   0.3084857
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.2815338    0.2051690   0.3505618
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.1353383   -0.7124458   0.2472795
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1397459   -0.8365787   0.2926953
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.1757542   -0.0536584   0.3552169
0-6 months    ki1000108-IRC              INDIA                          High                 NA                 0.4133715    0.0245889   0.6471918
0-6 months    ki1000109-EE               PAKISTAN                       High                 NA                 0.0540881   -0.7380042   0.4851857
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.4415077    0.2932870   0.5586417
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0470599   -0.4203868   0.3606708
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.3650528   -0.0869864   0.6291049
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.3186275   -0.5372684   0.6979912
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.4547447    0.1085663   0.6664886
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0785742    0.0292156   0.1254233
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.2494266   -0.1411527   0.5063234
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.6633168    0.4174953   0.8053997
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.4130859    0.2408869   0.5462228
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.2908908    0.2506420   0.3289777
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.2583422    0.1330813   0.3655042

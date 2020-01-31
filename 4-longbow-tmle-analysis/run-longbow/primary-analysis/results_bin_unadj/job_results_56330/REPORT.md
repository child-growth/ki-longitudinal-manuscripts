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

**Intervention Variable:** feducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        feducyrs    wasted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ---------  -------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High             0       40     119  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     High             1        4     119  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low              0       25     119  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low              1        8     119  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium           0       35     119  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium           1        7     119  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          High             0        6      23  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          High             1        1      23  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          Low              0       11      23  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          Low              1        2      23  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          Medium           0        3      23  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          Medium           1        0      23  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          High             0        2       9  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          High             1        1       9  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          Low              0        3       9  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          Low              1        0       9  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          Medium           0        3       9  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          Medium           1        0       9  wasted           
Birth       ki0047075b-MAL-ED          PERU                           High             0       83     190  wasted           
Birth       ki0047075b-MAL-ED          PERU                           High             1        1     190  wasted           
Birth       ki0047075b-MAL-ED          PERU                           Low              0       55     190  wasted           
Birth       ki0047075b-MAL-ED          PERU                           Low              1        1     190  wasted           
Birth       ki0047075b-MAL-ED          PERU                           Medium           0       48     190  wasted           
Birth       ki0047075b-MAL-ED          PERU                           Medium           1        2     190  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High             0       10      33  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High             1        0      33  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low              0       13      33  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low              1        1      33  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           0        9      33  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           1        0      33  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             0       62      96  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             1        0      96  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              0       25      96  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              1        1      96  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           0        8      96  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           1        0      96  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          High             0      244    1101  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          High             1       26    1101  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low              0      421    1101  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low              1       55    1101  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium           0      318    1101  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium           1       37    1101  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     High             0      131     532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     High             1       30     532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low              0      142     532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low              1       43     532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium           0      142     532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium           1       44     532  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High             0      211     707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High             1       66     707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low              0      168     707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low              1       61     707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium           0      156     707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium           1       45     707  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          High             0      118     640  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          High             1       44     640  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          Low              0      223     640  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          Low              1       43     640  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium           0      167     640  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium           1       45     640  wasted           
Birth       ki1119695-PROBIT           BELARUS                        High             0     1651   13364  wasted           
Birth       ki1119695-PROBIT           BELARUS                        High             1      400   13364  wasted           
Birth       ki1119695-PROBIT           BELARUS                        Low              0     4190   13364  wasted           
Birth       ki1119695-PROBIT           BELARUS                        Low              1     1107   13364  wasted           
Birth       ki1119695-PROBIT           BELARUS                        Medium           0     4746   13364  wasted           
Birth       ki1119695-PROBIT           BELARUS                        Medium           1     1270   13364  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High             0      759   12573  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High             1      155   12573  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low              0     1779   12573  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low              1      312   12573  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium           0     8051   12573  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium           1     1517   12573  wasted           
Birth       ki1135781-COHORTS          GUATEMALA                      High             0       95     718  wasted           
Birth       ki1135781-COHORTS          GUATEMALA                      High             1       41     718  wasted           
Birth       ki1135781-COHORTS          GUATEMALA                      Low              0      232     718  wasted           
Birth       ki1135781-COHORTS          GUATEMALA                      Low              1       79     718  wasted           
Birth       ki1135781-COHORTS          GUATEMALA                      Medium           0      210     718  wasted           
Birth       ki1135781-COHORTS          GUATEMALA                      Medium           1       61     718  wasted           
Birth       ki1135781-COHORTS          INDIA                          High             0      418    1291  wasted           
Birth       ki1135781-COHORTS          INDIA                          High             1       89    1291  wasted           
Birth       ki1135781-COHORTS          INDIA                          Low              0      359    1291  wasted           
Birth       ki1135781-COHORTS          INDIA                          Low              1       55    1291  wasted           
Birth       ki1135781-COHORTS          INDIA                          Medium           0      293    1291  wasted           
Birth       ki1135781-COHORTS          INDIA                          Medium           1       77    1291  wasted           
Birth       ki1135781-COHORTS          PHILIPPINES                    High             0      818    2728  wasted           
Birth       ki1135781-COHORTS          PHILIPPINES                    High             1      176    2728  wasted           
Birth       ki1135781-COHORTS          PHILIPPINES                    Low              0      673    2728  wasted           
Birth       ki1135781-COHORTS          PHILIPPINES                    Low              1      100    2728  wasted           
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium           0      826    2728  wasted           
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium           1      135    2728  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High             0     3606   17367  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High             1      443   17367  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low              0     6633   17367  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low              1      819   17367  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium           0     5234   17367  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium           1      632   17367  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High             0      457    2323  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High             1       53    2323  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low              0      820    2323  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low              1       93    2323  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium           0      814    2323  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium           1       86    2323  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     High             0       49     132  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     High             1        1     132  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low              0       35     132  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low              1        1     132  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium           0       43     132  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium           1        3     132  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          High             0       42     138  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          High             1        1     138  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          Low              0       51     138  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          Low              1        3     138  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          Medium           0       34     138  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          Medium           1        7     138  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          High             0       40      95  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          High             1        0      95  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          Low              0       27      95  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          Low              1        0      95  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          Medium           0       27      95  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          Medium           1        1      95  wasted           
6 months    ki0047075b-MAL-ED          PERU                           High             0      107     224  wasted           
6 months    ki0047075b-MAL-ED          PERU                           High             1        0     224  wasted           
6 months    ki0047075b-MAL-ED          PERU                           Low              0       60     224  wasted           
6 months    ki0047075b-MAL-ED          PERU                           Low              1        0     224  wasted           
6 months    ki0047075b-MAL-ED          PERU                           Medium           0       57     224  wasted           
6 months    ki0047075b-MAL-ED          PERU                           Medium           1        0     224  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High             0       33      92  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High             1        0      92  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low              0       32      92  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low              1        3      92  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           0       24      92  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           1        0      92  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             0      126     201  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             1        1     201  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              0       55     201  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              1        0     201  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           0       19     201  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           1        0     201  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          High             0      311    1331  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          High             1       38    1331  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low              0      476    1331  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low              1       72    1331  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium           0      379    1331  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium           1       55    1331  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High             0       82     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High             1       19     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low              0      115     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low              1       17     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium           0      114     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium           1       33     380  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     High             0      201     603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     High             1        8     603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low              0      197     603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low              1       11     603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium           0      180     603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium           1        6     603  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High             0      274     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High             1        5     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low              0      213     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low              1       10     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium           0      207     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium           1        6     715  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0      358    2017  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             1       13    2017  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0     1038    2017  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1       44    2017  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           0      534    2017  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           1       30    2017  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          High             0      125     563  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          High             1       12     563  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          Low              0      216     563  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          Low              1       27     563  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium           0      171     563  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium           1       12     563  wasted           
6 months    ki1119695-PROBIT           BELARUS                        High             0     2494   15208  wasted           
6 months    ki1119695-PROBIT           BELARUS                        High             1       18   15208  wasted           
6 months    ki1119695-PROBIT           BELARUS                        Low              0     5900   15208  wasted           
6 months    ki1119695-PROBIT           BELARUS                        Low              1       58   15208  wasted           
6 months    ki1119695-PROBIT           BELARUS                        Medium           0     6686   15208  wasted           
6 months    ki1119695-PROBIT           BELARUS                        Medium           1       52   15208  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High             0      552    8266  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High             1       17    8266  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low              0     1364    8266  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low              1       69    8266  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium           0     6096    8266  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium           1      168    8266  wasted           
6 months    ki1135781-COHORTS          GUATEMALA                      High             0      160     905  wasted           
6 months    ki1135781-COHORTS          GUATEMALA                      High             1        5     905  wasted           
6 months    ki1135781-COHORTS          GUATEMALA                      Low              0      394     905  wasted           
6 months    ki1135781-COHORTS          GUATEMALA                      Low              1       12     905  wasted           
6 months    ki1135781-COHORTS          GUATEMALA                      Medium           0      322     905  wasted           
6 months    ki1135781-COHORTS          GUATEMALA                      Medium           1       12     905  wasted           
6 months    ki1135781-COHORTS          INDIA                          High             0      483    1385  wasted           
6 months    ki1135781-COHORTS          INDIA                          High             1       61    1385  wasted           
6 months    ki1135781-COHORTS          INDIA                          Low              0      399    1385  wasted           
6 months    ki1135781-COHORTS          INDIA                          Low              1       51    1385  wasted           
6 months    ki1135781-COHORTS          INDIA                          Medium           0      344    1385  wasted           
6 months    ki1135781-COHORTS          INDIA                          Medium           1       47    1385  wasted           
6 months    ki1135781-COHORTS          PHILIPPINES                    High             0      843    2562  wasted           
6 months    ki1135781-COHORTS          PHILIPPINES                    High             1       49    2562  wasted           
6 months    ki1135781-COHORTS          PHILIPPINES                    Low              0      699    2562  wasted           
6 months    ki1135781-COHORTS          PHILIPPINES                    Low              1       45    2562  wasted           
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium           0      871    2562  wasted           
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium           1       55    2562  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         High             0      248     812  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         High             1        3     812  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         Low              0      285     812  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         Low              1        5     812  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         Medium           0      265     812  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         Medium           1        6     812  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High             0     3956   16105  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High             1      315   16105  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low              0     5711   16105  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low              1      580   16105  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium           0     5077   16105  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium           1      466   16105  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High             0     1055    4690  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High             1       43    4690  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low              0     1611    4690  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low              1      115    4690  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium           0     1758    4690  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium           1      108    4690  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     High             0       37     117  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     High             1        3     117  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low              0       30     117  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low              1        5     117  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium           0       35     117  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium           1        7     117  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          High             0       41     132  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          High             1        1     132  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          Low              0       47     132  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          Low              1        4     132  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          Medium           0       32     132  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          Medium           1        7     132  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          High             0       37      91  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          High             1        1      91  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          Low              0       26      91  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          Low              1        1      91  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          Medium           0       24      91  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          Medium           1        2      91  wasted           
24 months   ki0047075b-MAL-ED          PERU                           High             0       75     164  wasted           
24 months   ki0047075b-MAL-ED          PERU                           High             1        2     164  wasted           
24 months   ki0047075b-MAL-ED          PERU                           Low              0       44     164  wasted           
24 months   ki0047075b-MAL-ED          PERU                           Low              1        0     164  wasted           
24 months   ki0047075b-MAL-ED          PERU                           Medium           0       42     164  wasted           
24 months   ki0047075b-MAL-ED          PERU                           Medium           1        1     164  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High             0       34      91  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High             1        0      91  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low              0       33      91  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low              1        1      91  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           0       23      91  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           1        0      91  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             0      113     177  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             1        1     177  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              0       45     177  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              1        2     177  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           0       16     177  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           1        0     177  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     High             0      187     579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     High             1       15     579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low              0      171     579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low              1       27     579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium           0      159     579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium           1       20     579  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High             0      195     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High             1       16     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low              0      127     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low              1       17     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium           0      147     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium           1       12     514  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             1        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0        1       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           0        5       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           1        0       6  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          High             0       86     486  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          High             1       27     486  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          Low              0      182     486  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          Low              1       36     486  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium           0      128     486  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium           1       27     486  wasted           
24 months   ki1119695-PROBIT           BELARUS                        High             0      612    3853  wasted           
24 months   ki1119695-PROBIT           BELARUS                        High             1        8    3853  wasted           
24 months   ki1119695-PROBIT           BELARUS                        Low              0     1474    3853  wasted           
24 months   ki1119695-PROBIT           BELARUS                        Low              1       15    3853  wasted           
24 months   ki1119695-PROBIT           BELARUS                        Medium           0     1724    3853  wasted           
24 months   ki1119695-PROBIT           BELARUS                        Medium           1       20    3853  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High             0       11     410  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High             1        2     410  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low              0       76     410  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low              1       27     410  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium           0      246     410  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium           1       48     410  wasted           
24 months   ki1135781-COHORTS          GUATEMALA                      High             0      170    1002  wasted           
24 months   ki1135781-COHORTS          GUATEMALA                      High             1        8    1002  wasted           
24 months   ki1135781-COHORTS          GUATEMALA                      Low              0      446    1002  wasted           
24 months   ki1135781-COHORTS          GUATEMALA                      Low              1       19    1002  wasted           
24 months   ki1135781-COHORTS          GUATEMALA                      Medium           0      341    1002  wasted           
24 months   ki1135781-COHORTS          GUATEMALA                      Medium           1       18    1002  wasted           
24 months   ki1135781-COHORTS          INDIA                          High             0      504    1370  wasted           
24 months   ki1135781-COHORTS          INDIA                          High             1       32    1370  wasted           
24 months   ki1135781-COHORTS          INDIA                          Low              0      393    1370  wasted           
24 months   ki1135781-COHORTS          INDIA                          Low              1       55    1370  wasted           
24 months   ki1135781-COHORTS          INDIA                          Medium           0      353    1370  wasted           
24 months   ki1135781-COHORTS          INDIA                          Medium           1       33    1370  wasted           
24 months   ki1135781-COHORTS          PHILIPPINES                    High             0      769    2319  wasted           
24 months   ki1135781-COHORTS          PHILIPPINES                    High             1       29    2319  wasted           
24 months   ki1135781-COHORTS          PHILIPPINES                    Low              0      642    2319  wasted           
24 months   ki1135781-COHORTS          PHILIPPINES                    Low              1       51    2319  wasted           
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium           0      753    2319  wasted           
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium           1       75    2319  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         High             0      168     555  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         High             1        2     555  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         Low              0      189     555  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         Low              1        5     555  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         Medium           0      188     555  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         Medium           1        3     555  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High             0     1642    8264  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High             1      413    8264  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low              0     2606    8264  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low              1      765    8264  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium           0     2208    8264  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium           1      630    8264  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High             0      884    4602  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High             1      208    4602  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low              0     1372    4602  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low              1      322    4602  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium           0     1454    4602  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium           1      362    4602  wasted           


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/b913e623-b408-4b65-b87d-66b932049432/822da238-6245-45e4-bf0b-d1deaddd9a54/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b913e623-b408-4b65-b87d-66b932049432/822da238-6245-45e4-bf0b-d1deaddd9a54/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b913e623-b408-4b65-b87d-66b932049432/822da238-6245-45e4-bf0b-d1deaddd9a54/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b913e623-b408-4b65-b87d-66b932049432/822da238-6245-45e4-bf0b-d1deaddd9a54/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0962963   0.0636749   0.1289177
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1155462   0.0756810   0.1554114
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.1042254   0.0592232   0.1492275
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1863354   0.1261330   0.2465378
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2324324   0.1715100   0.2933549
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2365591   0.1754287   0.2976896
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.2382671   0.1880619   0.2884724
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.2663755   0.2090799   0.3236712
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2238806   0.1662133   0.2815479
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2716049   0.2030589   0.3401510
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1616541   0.1173798   0.2059285
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2122642   0.1571772   0.2673511
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                0.1950268   0.1264646   0.2635890
Birth       ki1119695-PROBIT           BELARUS                        Low                  NA                0.2089862   0.1356066   0.2823659
Birth       ki1119695-PROBIT           BELARUS                        Medium               NA                0.2111037   0.1473025   0.2749049
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1695842   0.1452548   0.1939137
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1492109   0.1339388   0.1644830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1585493   0.1512303   0.1658683
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                0.3014706   0.2242921   0.3786490
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.2540193   0.2056057   0.3024329
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.2250923   0.1753333   0.2748512
Birth       ki1135781-COHORTS          INDIA                          High                 NA                0.1755424   0.1424150   0.2086698
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                0.1328502   0.1001430   0.1655575
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                0.2081081   0.1667279   0.2494883
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1770624   0.1533278   0.2007969
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.1293661   0.1057033   0.1530289
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.1404787   0.1185052   0.1624522
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1094097   0.0985624   0.1202571
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1099034   0.1021179   0.1176889
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1077395   0.0989567   0.1165224
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1039216   0.0668874   0.1409557
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1018620   0.0797885   0.1239355
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0955556   0.0693171   0.1217940
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1088825   0.0818315   0.1359336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1313869   0.0961526   0.1666212
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.1267281   0.0945698   0.1588864
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1881188   0.1118017   0.2644359
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1287879   0.0715699   0.1860059
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.2244898   0.1569509   0.2920286
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0382775   0.0122440   0.0643110
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.0528846   0.0224447   0.0833245
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0322581   0.0068454   0.0576708
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0179211   0.0023434   0.0334989
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0448430   0.0176609   0.0720252
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0281690   0.0059337   0.0504043
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0350404   0.0163246   0.0537562
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0406654   0.0288937   0.0524372
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0531915   0.0346661   0.0717169
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.0875912   0.0402108   0.1349717
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1111111   0.0715623   0.1506599
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.0655738   0.0296778   0.1014698
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0071656   0.0030367   0.0112945
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0097348   0.0060755   0.0133941
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0077174   0.0052062   0.0102287
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0298770   0.0158875   0.0438664
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0481507   0.0370657   0.0592358
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0268199   0.0228189   0.0308210
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0303030   0.0041328   0.0564732
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0295567   0.0130736   0.0460397
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0359281   0.0159577   0.0558986
6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.1121324   0.0856080   0.1386567
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.1133333   0.0840340   0.1426327
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.1202046   0.0879592   0.1524500
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0549327   0.0399774   0.0698881
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0604839   0.0433515   0.0776163
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0593952   0.0441685   0.0746220
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0737532   0.0647911   0.0827153
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0921952   0.0841145   0.1002759
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0840700   0.0763212   0.0918188
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0391621   0.0180984   0.0602258
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0666280   0.0538407   0.0794153
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0578778   0.0434424   0.0723133
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0742574   0.0380696   0.1104453
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1363636   0.0885220   0.1842052
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1117318   0.0655408   0.1579229
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0758294   0.0400754   0.1115834
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1180556   0.0653018   0.1708093
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0754717   0.0343733   0.1165701
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2389381   0.1602319   0.3176442
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1651376   0.1157978   0.2144774
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1741935   0.1144234   0.2339637
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0129032   0.0046670   0.0211394
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0100739   0.0044872   0.0156605
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0114679   0.0005337   0.0224021
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0449438   0.0144926   0.0753950
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0408602   0.0228578   0.0588626
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0501393   0.0275534   0.0727251
24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0597015   0.0396360   0.0797670
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1227679   0.0923683   0.1531674
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0854922   0.0575880   0.1133965
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0363409   0.0233541   0.0493276
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0735931   0.0541487   0.0930375
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0905797   0.0710262   0.1101332
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.2009732   0.1822640   0.2196825
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2269356   0.2118436   0.2420277
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2219873   0.2052525   0.2387221
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1904762   0.1595713   0.2213811
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1900826   0.1678179   0.2123474
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1993392   0.1779265   0.2207519


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1071753   0.0763487   0.1380019
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2199248   0.1846953   0.2551543
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2432815   0.2116319   0.2749310
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2062500   0.1748784   0.2376216
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.2077971   0.1423827   0.2732114
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1577985   0.1514260   0.1641709
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2520891   0.2203065   0.2838718
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1711851   0.1506302   0.1917400
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1506598   0.1372339   0.1640858
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1090574   0.1037994   0.1143154
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0998709   0.0841992   0.1155426
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1239669   0.0988748   0.1490591
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1815789   0.1427684   0.2203895
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0414594   0.0255348   0.0573839
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0293706   0.0169860   0.0417552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0431334   0.0342652   0.0520016
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0905861   0.0668565   0.1143158
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0084166   0.0066777   0.0101555
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0307283   0.0270076   0.0344489
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0320442   0.0205636   0.0435248
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1148014   0.0980067   0.1315962
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0581577   0.0490934   0.0672220
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0845079   0.0795688   0.0894470
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0567164   0.0477001   0.0657328
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1070812   0.0818727   0.1322897
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1851852   0.1506144   0.2197560
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0111601   0.0050716   0.0172486
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0449102   0.0320802   0.0577401
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0875912   0.0726161   0.1025664
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0668392   0.0566723   0.0770060
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2187803   0.2086815   0.2288790
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1938288   0.1801571   0.2075004


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.1999030   0.8760028   1.6435646
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.0823402   0.6264565   1.8699786
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.2473874   0.8228476   1.8909642
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.2695341   0.8393992   1.9200836
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.1179701   0.8272984   1.5107694
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.9396201   0.6736358   1.3106279
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  High              0.5951811   0.4101140   0.8637613
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.7815180   0.5441575   1.1224147
Birth       ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT           BELARUS                        Low                  High              1.0715768   0.8658255   1.3262221
Birth       ki1119695-PROBIT           BELARUS                        Medium               High              1.0824343   0.9419873   1.2438215
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              0.8798630   0.7376964   1.0494276
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              0.9349296   0.8041308   1.0870039
Birth       ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  High              0.8426006   0.6123668   1.1593961
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               High              0.7466475   0.5323771   1.0471571
Birth       ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          Low                  High              0.7567986   0.5549589   1.0320478
Birth       ki1135781-COHORTS          INDIA                          Medium               High              1.1855147   0.9012622   1.5594187
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  High              0.7306245   0.5823824   0.9166008
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.7933852   0.6456843   0.9748729
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.0045119   0.8909896   1.1324983
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              0.9847343   0.8655960   1.1202705
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              0.9801814   0.6456902   1.4879514
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              0.9194969   0.5867273   1.4410007
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.2066846   0.8570646   1.6989240
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.1638976   0.9118663   1.4855881
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              0.6846093   0.3751071   1.2494826
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.1933405   0.7201380   1.9774841
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.3816106   0.5668016   3.3677531
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.8427419   0.2976437   2.3861209
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              2.5022421   0.8671563   7.2204002
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.5718309   0.4858176   5.0855562
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.1605289   0.6321399   2.1305843
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.5180033   0.8023249   2.8720709
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.2685185   0.6638629   2.4239030
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.7486339   0.3467706   1.6162061
6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High              1.3585468   0.6618408   2.7886609
6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.0770093   0.5411955   2.1433088
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.6116333   0.9564561   2.7156104
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              0.8976786   0.5491584   1.4673851
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9753695   0.3489017   2.7266868
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              1.1856287   0.4245356   3.3111839
6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              1.0107104   0.7119427   1.4348562
6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.0719886   0.7496601   1.5329073
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.1010533   0.7433332   1.6309220
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.0812359   0.7438998   1.5715439
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.2500498   1.0845325   1.4408278
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.1398824   0.9813834   1.3239800
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.7013390   0.9630755   3.0055320
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.4779030   0.8198031   2.6642948
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.8363636   1.0073327   3.3476837
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.5046555   0.7941395   2.8508695
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.5568576   0.8130652   2.9810717
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.9952830   0.4843029   2.0453901
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              0.6911315   0.4430189   1.0781995
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.7290323   0.4530814   1.1730519
24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              0.7807253   0.3375301   1.8058597
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              0.8887615   0.2825384   2.7957154
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9091398   0.4051702   2.0399704
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.1155989   0.4944904   2.5168554
24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              2.0563616   1.3545571   3.1217754
24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.4319948   0.8963411   2.2877554
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              2.0250784   1.2984639   3.1583031
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              2.4925037   1.6417927   3.7840192
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1291833   1.0075257   1.2655310
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.1045616   0.9823921   1.2419239
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              0.9979339   0.8154972   1.2211839
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.0465308   0.8607349   1.2724322


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0108790   -0.0174190    0.0391770
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0335894   -0.0180998    0.0852786
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0050143   -0.0343197    0.0443483
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0653549   -0.1228362   -0.0078737
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                 0.0127703   -0.0123824    0.0379229
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0117858   -0.0351625    0.0115909
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0493815   -0.1180120    0.0192491
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.0043573   -0.0300082    0.0212936
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0264026   -0.0446526   -0.0081525
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0003523   -0.0097679    0.0090633
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0040507   -0.0358869    0.0277855
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0150844   -0.0089901    0.0391589
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.0065399   -0.0716128    0.0585330
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0031819   -0.0183012    0.0246649
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0114495   -0.0029263    0.0258253
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0080929   -0.0092295    0.0254154
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0029949   -0.0384231    0.0444130
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0012510   -0.0028115    0.0053135
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0008513   -0.0126618    0.0143644
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0017412   -0.0220695    0.0255519
6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0026691   -0.0181379    0.0234761
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0032250   -0.0090258    0.0154757
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0107547    0.0033826    0.0181268
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0175543   -0.0001385    0.0352471
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0328237    0.0007103    0.0649372
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0117193   -0.0170383    0.0404768
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0537529   -0.1209031    0.0133974
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.0017431   -0.0108060    0.0073198
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0000336   -0.0276458    0.0275785
24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0278897    0.0102309    0.0455486
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0304983    0.0180105    0.0429861
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0178070    0.0014752    0.0341388
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0033526   -0.0231686    0.0298738


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1015066   -0.1919814    0.3227324
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1527313   -0.1172555    0.3574754
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0206112   -0.1551712    0.1696448
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.3168724   -0.6256271   -0.0667594
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                 0.0614554   -0.0680891    0.1752880
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0746889   -0.2335071    0.0636810
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.1958889   -0.5013437    0.0474199
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.0254536   -0.1867771    0.1139405
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.1752461   -0.3021912   -0.0606763
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0032306   -0.0933886    0.0794932
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0405595   -0.4126655    0.2335312
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1216810   -0.0852953    0.2891849
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.0360166   -0.4641194    0.2669105
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0767464   -0.6169746    0.4728444
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.3898276   -0.3012672    0.7138863
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1876259   -0.3290219    0.5034305
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0330614   -0.5514148    0.3973435
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.1486365   -0.4930504    0.5145377
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0277044   -0.5283431    0.3814486
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0543365   -1.0743176    0.5688801
6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0232496   -0.1758710    0.1886514
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0554519   -0.1803368    0.2441385
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1272626    0.0349908    0.2107116
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.3095100   -0.1027149    0.5676340
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.3065315   -0.0574348    0.5452215
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.1338599   -0.2629839    0.4060109
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.2902655   -0.7067376    0.0245806
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.1561890   -1.4222360    0.4481243
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0007491   -0.8498780    0.4586137
24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.3184080    0.0925022    0.4880784
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.4562940    0.2504808    0.6055921
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0813922    0.0037542    0.1529799
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0172966   -0.1296467    0.1451256

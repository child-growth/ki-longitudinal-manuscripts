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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country                        feducyrs    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  ---------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                0       48     138
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                1        3     138
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                 0       38     138
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                 1        0     138
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium              0       45     138
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium              1        4     138
0-24 months   ki0047075b-MAL-ED          INDIA                          High                0       43     139
0-24 months   ki0047075b-MAL-ED          INDIA                          High                1        0     139
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                 0       51     139
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                 1        4     139
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium              0       32     139
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium              1        9     139
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                0       40      96
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                1        1      96
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                 0       27      96
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                 1        0      96
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium              0       27      96
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium              1        1      96
0-24 months   ki0047075b-MAL-ED          PERU                           High                0      110     234
0-24 months   ki0047075b-MAL-ED          PERU                           High                1        1     234
0-24 months   ki0047075b-MAL-ED          PERU                           Low                 0       63     234
0-24 months   ki0047075b-MAL-ED          PERU                           Low                 1        0     234
0-24 months   ki0047075b-MAL-ED          PERU                           Medium              0       60     234
0-24 months   ki0047075b-MAL-ED          PERU                           Medium              1        0     234
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                0       38      99
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                1        0      99
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 0       35      99
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 1        1      99
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              0       25      99
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              1        0      99
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                0      129     206
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                1        0     206
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 0       58     206
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 1        0     206
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              0       19     206
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              1        0     206
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                0      345    1363
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                1       17    1363
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                 0      501    1363
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                 1       62    1363
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium              0      403    1363
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium              1       35    1363
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                0       86     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                1       13     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                 0      107     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                 1       24     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium              0      117     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium              1       28     375
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                0      216     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                1        4     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                 0      208     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                 1        8     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium              0      202     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium              1        3     641
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                0      282     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                1        4     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                 0      215     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                 1       14     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium              0      207     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium              1        8     730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                0      393    2155
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                1        9    2155
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 0     1123    2155
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 1       29    2155
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              0      581    2155
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              1       20    2155
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                0      126     596
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                1       20     596
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                 0      221     596
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                 1       36     596
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium              0      169     596
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium              1       24     596
0-24 months   ki1119695-PROBIT           BELARUS                        High                0     2614   16010
0-24 months   ki1119695-PROBIT           BELARUS                        High                1       20   16010
0-24 months   ki1119695-PROBIT           BELARUS                        Low                 0     6242   16010
0-24 months   ki1119695-PROBIT           BELARUS                        Low                 1       71   16010
0-24 months   ki1119695-PROBIT           BELARUS                        Medium              0     7002   16010
0-24 months   ki1119695-PROBIT           BELARUS                        Medium              1       61   16010
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                0      611    9246
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                1        9    9246
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                 0     1568    9246
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                 1       45    9246
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium              0     6904    9246
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium              1      109    9246
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                0      182     999
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                1        6     999
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                 0      431     999
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                 1       14     999
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium              0      351     999
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium              1       15     999
0-24 months   ki1135781-COHORTS          INDIA                          High                0      454    1242
0-24 months   ki1135781-COHORTS          INDIA                          High                1       33    1242
0-24 months   ki1135781-COHORTS          INDIA                          Low                 0      366    1242
0-24 months   ki1135781-COHORTS          INDIA                          Low                 1       38    1242
0-24 months   ki1135781-COHORTS          INDIA                          Medium              0      324    1242
0-24 months   ki1135781-COHORTS          INDIA                          Medium              1       27    1242
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                0      892    2659
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                1       31    2659
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                 0      736    2659
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                 1       44    2659
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium              0      897    2659
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium              1       59    2659
0-24 months   ki1148112-LCNI-5           MALAWI                         High                0      214     712
0-24 months   ki1148112-LCNI-5           MALAWI                         High                1        2     712
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                 0      258     712
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                 1        1     712
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium              0      234     712
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium              1        3     712
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                0     3853   15189
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                1      178   15189
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                 0     5568   15189
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                 1      367   15189
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium              0     4914   15189
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium              1      309   15189
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                0     1133    5132
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                1       77    5132
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                 0     1729    5132
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                 1      167    5132
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium              0     1854    5132
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium              1      172    5132
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                0       49     138
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                1        2     138
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                 0       36     138
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                 1        2     138
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium              0       47     138
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium              1        2     138
0-6 months    ki0047075b-MAL-ED          INDIA                          High                0       41     138
0-6 months    ki0047075b-MAL-ED          INDIA                          High                1        1     138
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                 0       50     138
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                 1        5     138
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium              0       37     138
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium              1        4     138
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                0       39      96
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                1        2      96
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                 0       27      96
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                 1        0      96
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium              0       28      96
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium              1        0      96
0-6 months    ki0047075b-MAL-ED          PERU                           High                0      111     234
0-6 months    ki0047075b-MAL-ED          PERU                           High                1        0     234
0-6 months    ki0047075b-MAL-ED          PERU                           Low                 0       63     234
0-6 months    ki0047075b-MAL-ED          PERU                           Low                 1        0     234
0-6 months    ki0047075b-MAL-ED          PERU                           Medium              0       60     234
0-6 months    ki0047075b-MAL-ED          PERU                           Medium              1        0     234
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                0       38      99
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                1        0      99
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 0       35      99
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 1        1      99
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              0       25      99
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              1        0      99
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                0      129     206
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                1        0     206
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 0       58     206
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 1        0     206
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              0       19     206
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              1        0     206
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                0      213     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                1        6     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                 0      209     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                 1        6     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium              0      202     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium              1        2     638
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                0       75     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                1        1     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                 0      102     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                 1        2     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium              0       68     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium              1        2     250
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                0      364    2051
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                1       13    2051
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 0     1076    2051
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 1       23    2051
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              0      559    2051
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              1       16    2051
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                0      123     566
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                1       14     566
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                 0      221     566
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                 1       26     566
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium              0      160     566
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium              1       22     566
0-6 months    ki1119695-PROBIT           BELARUS                        High                0     1854   13079
0-6 months    ki1119695-PROBIT           BELARUS                        High                1      160   13079
0-6 months    ki1119695-PROBIT           BELARUS                        Low                 0     4734   13079
0-6 months    ki1119695-PROBIT           BELARUS                        Low                 1      442   13079
0-6 months    ki1119695-PROBIT           BELARUS                        Medium              0     5390   13079
0-6 months    ki1119695-PROBIT           BELARUS                        Medium              1      499   13079
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                0       45     613
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                1        2     613
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                 0      102     613
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                 1        2     613
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium              0      452     613
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium              1       10     613
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                0      259     804
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                1       18     804
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                 0      209     804
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                 1       11     804
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium              0      288     804
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium              1       19     804
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                0       18      48
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                1        1      48
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                 0       13      48
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                 1        1      48
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium              0       15      48
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium              1        0      48
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                0       48     138
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                1        3     138
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                 0       38     138
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                 1        0     138
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium              0       45     138
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium              1        4     138
6-24 months   ki0047075b-MAL-ED          INDIA                          High                0       43     139
6-24 months   ki0047075b-MAL-ED          INDIA                          High                1        0     139
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                 0       51     139
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                 1        4     139
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium              0       32     139
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium              1        9     139
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                0       40      96
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                1        1      96
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                 0       27      96
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                 1        0      96
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium              0       27      96
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium              1        1      96
6-24 months   ki0047075b-MAL-ED          PERU                           High                0      110     234
6-24 months   ki0047075b-MAL-ED          PERU                           High                1        1     234
6-24 months   ki0047075b-MAL-ED          PERU                           Low                 0       63     234
6-24 months   ki0047075b-MAL-ED          PERU                           Low                 1        0     234
6-24 months   ki0047075b-MAL-ED          PERU                           Medium              0       60     234
6-24 months   ki0047075b-MAL-ED          PERU                           Medium              1        0     234
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                0       38      99
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                1        0      99
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 0       35      99
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 1        1      99
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              0       25      99
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              1        0      99
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                0      129     206
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                1        0     206
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 0       58     206
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 1        0     206
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              0       19     206
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              1        0     206
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                0      345    1363
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                1       17    1363
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                 0      501    1363
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                 1       62    1363
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium              0      403    1363
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium              1       35    1363
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                0       86     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                1       13     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                 0      107     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                 1       24     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium              0      117     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium              1       28     375
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                0      216     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                1        4     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                 0      208     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                 1        8     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium              0      202     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium              1        3     641
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                0      282     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                1        4     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                 0      215     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                 1       14     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium              0      207     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium              1        8     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                0      393    2155
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                1        9    2155
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 0     1123    2155
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 1       29    2155
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              0      581    2155
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              1       20    2155
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                0      126     596
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                1       20     596
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                 0      221     596
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                 1       36     596
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium              0      169     596
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium              1       24     596
6-24 months   ki1119695-PROBIT           BELARUS                        High                0     2614   16010
6-24 months   ki1119695-PROBIT           BELARUS                        High                1       20   16010
6-24 months   ki1119695-PROBIT           BELARUS                        Low                 0     6242   16010
6-24 months   ki1119695-PROBIT           BELARUS                        Low                 1       71   16010
6-24 months   ki1119695-PROBIT           BELARUS                        Medium              0     7002   16010
6-24 months   ki1119695-PROBIT           BELARUS                        Medium              1       61   16010
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                0      611    9246
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                1        9    9246
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                 0     1568    9246
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                 1       45    9246
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium              0     6904    9246
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium              1      109    9246
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                0      182     999
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                1        6     999
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                 0      431     999
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                 1       14     999
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium              0      351     999
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium              1       15     999
6-24 months   ki1135781-COHORTS          INDIA                          High                0      454    1242
6-24 months   ki1135781-COHORTS          INDIA                          High                1       33    1242
6-24 months   ki1135781-COHORTS          INDIA                          Low                 0      366    1242
6-24 months   ki1135781-COHORTS          INDIA                          Low                 1       38    1242
6-24 months   ki1135781-COHORTS          INDIA                          Medium              0      324    1242
6-24 months   ki1135781-COHORTS          INDIA                          Medium              1       27    1242
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                0      892    2659
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                1       31    2659
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                 0      736    2659
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                 1       44    2659
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium              0      897    2659
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium              1       59    2659
6-24 months   ki1148112-LCNI-5           MALAWI                         High                0      214     712
6-24 months   ki1148112-LCNI-5           MALAWI                         High                1        2     712
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                 0      258     712
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                 1        1     712
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium              0      234     712
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium              1        3     712
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                0     3853   15189
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                1      178   15189
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                 0     5568   15189
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                 1      367   15189
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium              0     4914   15189
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium              1      309   15189
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                0     1133    5132
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                1       77    5132
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                 0     1729    5132
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                 1      167    5132
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium              0     1854    5132
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium              1      172    5132


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/9b9b0d8f-b2c2-4574-9825-3e3869e7e1fc/67013bcd-95b1-4f9c-bbc3-0036a63b1208/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9b9b0d8f-b2c2-4574-9825-3e3869e7e1fc/67013bcd-95b1-4f9c-bbc3-0036a63b1208/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9b9b0d8f-b2c2-4574-9825-3e3869e7e1fc/67013bcd-95b1-4f9c-bbc3-0036a63b1208/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9b9b0d8f-b2c2-4574-9825-3e3869e7e1fc/67013bcd-95b1-4f9c-bbc3-0036a63b1208/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0469613   0.0119037   0.0820190
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1101243   0.0830059   0.1372428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0799087   0.0554976   0.1043198
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1313131   0.0646944   0.1979318
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1832061   0.1168748   0.2495374
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.1931034   0.1287684   0.2574385
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0223881   0.0079228   0.0368534
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0251736   0.0161255   0.0342217
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0332779   0.0189349   0.0476209
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1369863   0.0811671   0.1928055
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1400778   0.0976100   0.1825457
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1243523   0.0777588   0.1709459
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0075930   0.0020886   0.0130974
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0112466   0.0060260   0.0164672
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0086366   0.0034510   0.0138222
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0145161   0.0051010   0.0239312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0278983   0.0198612   0.0359354
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0155426   0.0126474   0.0184378
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0319149   0.0067764   0.0570534
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0314607   0.0152340   0.0476873
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0409836   0.0206627   0.0613045
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0677618   0.0454305   0.0900931
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.0940594   0.0655831   0.1225357
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0769231   0.0490351   0.1048110
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0335861   0.0219612   0.0452111
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0564103   0.0402163   0.0726042
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0617155   0.0464586   0.0769723
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0441578   0.0372146   0.0511009
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0618366   0.0552331   0.0684400
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0591614   0.0520181   0.0663047
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0636364   0.0453629   0.0819099
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0880802   0.0732387   0.1029217
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0848963   0.0723423   0.0974504
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0344828   0.0160596   0.0529059
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0209281   0.0124631   0.0293931
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0278261   0.0143793   0.0412729
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1021898   0.0514244   0.1529552
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1052632   0.0669569   0.1435694
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1208791   0.0734772   0.1682811
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0794439   0.0483936   0.1104942
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0853941   0.0572229   0.1135654
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0847343   0.0557111   0.1137574
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0649819   0.0359361   0.0940278
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0500000   0.0211827   0.0788173
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0618893   0.0349191   0.0888594
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0469613   0.0119037   0.0820190
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1101243   0.0830059   0.1372428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0799087   0.0554976   0.1043198
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1313131   0.0646944   0.1979318
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1832061   0.1168748   0.2495374
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.1931034   0.1287684   0.2574385
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0223881   0.0079228   0.0368534
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0251736   0.0161255   0.0342217
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0332779   0.0189349   0.0476209
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1369863   0.0811671   0.1928055
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1400778   0.0976100   0.1825457
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1243523   0.0777588   0.1709459
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0075930   0.0020886   0.0130974
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0112466   0.0060260   0.0164672
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0086366   0.0034510   0.0138222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0145161   0.0051010   0.0239312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0278983   0.0198612   0.0359354
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0155426   0.0126474   0.0184378
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0319149   0.0067764   0.0570534
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0314607   0.0152340   0.0476873
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0409836   0.0206627   0.0613045
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0677618   0.0454305   0.0900931
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.0940594   0.0655831   0.1225357
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0769231   0.0490351   0.1048110
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0335861   0.0219612   0.0452111
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0564103   0.0402163   0.0726042
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0617155   0.0464586   0.0769723
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0441578   0.0372146   0.0511009
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0618366   0.0552331   0.0684400
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0591614   0.0520181   0.0663047
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0636364   0.0453629   0.0819099
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0880802   0.0732387   0.1029217
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0848963   0.0723423   0.0974504


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0836390   0.0602327   0.1070453
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1733333   0.1349698   0.2116969
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0269142   0.0200799   0.0337484
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1342282   0.1068369   0.1616195
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0094941   0.0051728   0.0138153
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0176292   0.0149467   0.0203118
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0350350   0.0236276   0.0464425
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0789050   0.0639058   0.0939041
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0503949   0.0420785   0.0587113
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0562249   0.0520204   0.0604294
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0810600   0.0722782   0.0898418
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0253535   0.0185487   0.0321583
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1095406   0.0837882   0.1352931
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0841807   0.0567141   0.1116474
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0597015   0.0433139   0.0760891
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0836390   0.0602327   0.1070453
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1733333   0.1349698   0.2116969
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0269142   0.0200799   0.0337484
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1342282   0.1068369   0.1616195
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0094941   0.0051728   0.0138153
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0176292   0.0149467   0.0203118
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0350350   0.0236276   0.0464425
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0789050   0.0639058   0.0939041
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0503949   0.0420785   0.0587113
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0562249   0.0520204   0.0604294
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0810600   0.0722782   0.0898418


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              2.3450005   1.1598518   4.741147
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.7015847   0.8853674   3.270270
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.3951850   0.7480810   2.602046
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.4705570   0.8014755   2.698196
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.1244213   0.5368195   2.355211
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.4864115   0.6836450   3.231822
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.0225681   0.6153434   1.699288
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.9077720   0.5218759   1.579015
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.4811817   0.8011116   2.738569
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.1374345   0.4990709   2.592331
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.9218847   0.9451687   3.907917
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0707100   0.5452590   2.102524
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9857678   0.3844846   2.527379
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.2841530   0.5062921   3.257110
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.3880888   0.8872928   2.171539
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.1351981   0.6954913   1.852898
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.6795699   1.0712826   2.633250
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.8375287   1.2009106   2.811626
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.4003549   1.1637167   1.685113
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.3397730   1.1084710   1.619340
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.3841169   0.9989615   1.917771
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.3340855   0.9669700   1.840578
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              0.6069154   0.3105289   1.186190
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              0.8069565   0.3926323   1.658495
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.0300752   0.5564525   1.906820
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.1828885   0.6281723   2.227455
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              1.0748986   0.8414961   1.373039
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.0665924   0.8811118   1.291118
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              0.7694444   0.3710385   1.595642
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.9524068   0.5101642   1.778013
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              2.3450005   1.1598518   4.741147
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.7015847   0.8853674   3.270270
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.3951850   0.7480810   2.602046
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.4705570   0.8014755   2.698196
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.1244213   0.5368195   2.355211
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.4864115   0.6836450   3.231822
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.0225681   0.6153434   1.699288
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.9077720   0.5218759   1.579015
6-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.4811817   0.8011116   2.738569
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.1374345   0.4990709   2.592331
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.9218847   0.9451687   3.907917
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0707100   0.5452590   2.102524
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9857678   0.3844846   2.527379
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.2841530   0.5062921   3.257110
6-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.3880888   0.8872928   2.171539
6-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.1351981   0.6954913   1.852898
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.6795699   1.0712826   2.633250
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.8375287   1.2009106   2.811626
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.4003549   1.1637167   1.685113
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.3397730   1.1084710   1.619340
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.3841169   0.9989615   1.917771
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.3340855   0.9669700   1.840578


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0366777    0.0138742   0.0594812
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0420202   -0.0177001   0.1017405
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0045261   -0.0088113   0.0178635
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0027581   -0.0511270   0.0456107
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0019011   -0.0025761   0.0063782
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0031131   -0.0060494   0.0122757
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0031201   -0.0197759   0.0260162
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0111432   -0.0070936   0.0293800
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0168088    0.0062977   0.0273198
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0120671    0.0061104   0.0180239
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0174237    0.0018499   0.0329974
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0091293   -0.0252829   0.0070244
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0073509   -0.0372892   0.0519909
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0047369   -0.0081684   0.0176421
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0052805   -0.0283215   0.0177605
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0366777    0.0138742   0.0594812
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0420202   -0.0177001   0.1017405
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0045261   -0.0088113   0.0178635
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0027581   -0.0511270   0.0456107
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0019011   -0.0025761   0.0063782
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0031131   -0.0060494   0.0122757
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0031201   -0.0197759   0.0260162
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0111432   -0.0070936   0.0293800
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0168088    0.0062977   0.0273198
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0120671    0.0061104   0.0180239
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0174237    0.0018499   0.0329974


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.4385238    0.0152758   0.6798540
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.2424242   -0.1893217   0.5174384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1681678   -0.5060612   0.5405599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0205479   -0.4526883   0.2830409
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.2002358   -0.4222704   0.5502804
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1765882   -0.5466324   0.5616237
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0890578   -0.8653949   0.5551528
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.1412228   -0.1222469   0.3428378
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3335409    0.0979768   0.5075872
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.2146224    0.1016249   0.3134070
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.2149476   -0.0060658   0.3874085
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.3600796   -1.1618510   0.1443368
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0671062   -0.4435686   0.3971254
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0562701   -0.1127804   0.1996388
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0884477   -0.5507252   0.2360230
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.4385238    0.0152758   0.6798540
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.2424242   -0.1893217   0.5174384
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1681678   -0.5060612   0.5405599
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0205479   -0.4526883   0.2830409
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.2002358   -0.4222704   0.5502804
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1765882   -0.5466324   0.5616237
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0890578   -0.8653949   0.5551528
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.1412228   -0.1222469   0.3428378
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3335409    0.0979768   0.5075872
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.2146224    0.1016249   0.3134070
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.2149476   -0.0060658   0.3874085

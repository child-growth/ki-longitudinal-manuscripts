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

* arm
* W_mage
* meducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_meducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single

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




# Results Detail

## Results Plots
![](/tmp/695f31c9-d204-4598-b855-a920b8f490e6/d75ca56f-f14f-45c2-b162-2f0567a69f2a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/695f31c9-d204-4598-b855-a920b8f490e6/d75ca56f-f14f-45c2-b162-2f0567a69f2a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/695f31c9-d204-4598-b855-a920b8f490e6/d75ca56f-f14f-45c2-b162-2f0567a69f2a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/695f31c9-d204-4598-b855-a920b8f490e6/d75ca56f-f14f-45c2-b162-2f0567a69f2a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0479762   0.0053159   0.0906364
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1089371   0.0829270   0.1349472
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0770914   0.0531683   0.1010145
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1388870   0.0686615   0.2091125
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1773155   0.1102394   0.2443916
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.1999375   0.1333037   0.2665714
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0223881   0.0079228   0.0368534
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0251736   0.0161255   0.0342217
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0332779   0.0189349   0.0476209
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1409893   0.0845282   0.1974505
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1400728   0.0973731   0.1827726
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1226910   0.0755432   0.1698388
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0076069   0.0022063   0.0130074
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0120236   0.0067487   0.0172985
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0086585   0.0033988   0.0139183
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0145161   0.0051010   0.0239312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0278983   0.0198612   0.0359354
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0155426   0.0126474   0.0184378
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0319149   0.0067764   0.0570534
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0314607   0.0152340   0.0476873
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0409836   0.0206627   0.0613045
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0676598   0.0453439   0.0899757
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.0941235   0.0655315   0.1227155
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0763498   0.0484939   0.1042057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0350234   0.0232510   0.0467958
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0548891   0.0388012   0.0709770
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0610480   0.0457216   0.0763743
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0441253   0.0366404   0.0516101
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0613126   0.0544217   0.0682035
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0611996   0.0536877   0.0687116
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0670477   0.0488571   0.0852383
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0863415   0.0717913   0.1008917
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0841900   0.0718057   0.0965744
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0343595   0.0162215   0.0524975
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0207299   0.0123106   0.0291491
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0282167   0.0145008   0.0419326
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1017998   0.0502030   0.1533966
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1023642   0.0646055   0.1401229
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1236601   0.0748131   0.1725072
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0828035   0.0530627   0.1125443
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0849606   0.0594312   0.1104900
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0833385   0.0538081   0.1128689
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0639756   0.0347655   0.0931857
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0495485   0.0207372   0.0783598
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0617462   0.0346642   0.0888282
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0479762   0.0053159   0.0906364
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1089371   0.0829270   0.1349472
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0770914   0.0531683   0.1010145
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1382303   0.0701366   0.2063240
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1795219   0.1126133   0.2464306
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.1935948   0.1271864   0.2600033
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0223881   0.0079228   0.0368534
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0251736   0.0161255   0.0342217
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0332779   0.0189349   0.0476209
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1405429   0.0840534   0.1970324
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1367488   0.0949857   0.1785119
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1252399   0.0782977   0.1721822
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0075709   0.0020924   0.0130494
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0117114   0.0064597   0.0169632
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0085900   0.0034272   0.0137529
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0145161   0.0051010   0.0239312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0278983   0.0198612   0.0359354
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0155426   0.0126474   0.0184378
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0319149   0.0067764   0.0570534
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0314607   0.0152340   0.0476873
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0409836   0.0206627   0.0613045
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0674046   0.0450976   0.0897116
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.0942677   0.0657460   0.1227893
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0764610   0.0487720   0.1041501
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0354459   0.0236449   0.0472470
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0548415   0.0386764   0.0710065
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0606543   0.0453099   0.0759987
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0443216   0.0368113   0.0518319
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0613468   0.0544199   0.0682736
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0601908   0.0526189   0.0677627
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0669391   0.0488331   0.0850452
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0863767   0.0717892   0.1009642
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0840800   0.0716661   0.0964939


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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              2.2706501   0.9774568   5.274762
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.6068688   0.7466768   3.458025
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.2766887   0.6814740   2.391777
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.4395697   0.7846264   2.641207
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.1244213   0.5368195   2.355211
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.4864115   0.6836450   3.231822
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              0.9934997   0.6009882   1.642364
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.8702149   0.4995336   1.515962
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.5806267   0.8600132   2.905049
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.1382514   0.5036344   2.572533
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.9218847   0.9451687   3.907917
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0707100   0.5452590   2.102524
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9857678   0.3844846   2.527379
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.2841530   0.5062921   3.257110
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.3911299   0.8883320   2.178513
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.1284371   0.6901959   1.844940
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.5672138   1.0033559   2.447944
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.7430641   1.1457186   2.651849
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.3895125   1.1428788   1.689370
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.3869522   1.1339196   1.696449
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.2877620   0.9424470   1.759601
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.2556737   0.9240548   1.706302
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              0.6033232   0.3098838   1.174630
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              0.8212190   0.4006235   1.683378
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.0055445   0.5369494   1.883082
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.2147387   0.6387343   2.310178
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              1.0260513   0.8690209   1.211457
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.0064611   0.8579297   1.180707
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              0.7744905   0.3697931   1.622084
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.9651517   0.5122505   1.818481
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              2.2706501   0.9774568   5.274762
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.6068688   0.7466768   3.458025
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.2987164   0.7018632   2.403124
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.4005240   0.7683287   2.552901
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.1244213   0.5368195   2.355211
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.4864115   0.6836450   3.231822
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              0.9730041   0.5880716   1.609901
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.8911154   0.5139954   1.544929
6-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.5468964   0.8359923   2.862333
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.1346091   0.4990111   2.579778
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.9218847   0.9451687   3.907917
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0707100   0.5452590   2.102524
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9857678   0.3844846   2.527379
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.2841530   0.5062921   3.257110
6-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.3985344   0.8931791   2.189817
6-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.1343594   0.6947066   1.852251
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.5471860   0.9916916   2.413840
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.7111774   1.1261782   2.600058
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.3841280   1.1395656   1.681176
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.3580465   1.1059957   1.667538
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.2903768   0.9449494   1.762076
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.2560664   0.9246876   1.706201


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0356629    0.0068211   0.0645046
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0344463   -0.0287252   0.0976179
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0045261   -0.0088113   0.0178635
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0067611   -0.0557163   0.0421940
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0018872   -0.0024993   0.0062737
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0031131   -0.0060494   0.0122757
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0031201   -0.0197759   0.0260162
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0112452   -0.0069981   0.0294885
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0153715    0.0047463   0.0259967
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0120996    0.0056390   0.0185603
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0140123   -0.0014916   0.0295162
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0090060   -0.0249176   0.0069056
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0077409   -0.0378448   0.0533265
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0013772   -0.0083164   0.0110709
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0042741   -0.0274643   0.0189160
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0356629    0.0068211   0.0645046
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0351030   -0.0260899   0.0962960
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0045261   -0.0088113   0.0178635
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0063147   -0.0553070   0.0426776
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0019231   -0.0025378   0.0063841
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0031131   -0.0060494   0.0122757
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0031201   -0.0197759   0.0260162
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0115004   -0.0067305   0.0297313
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0149489    0.0043112   0.0255867
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0119033    0.0054254   0.0183811
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0141209   -0.0012971   0.0295388


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.4263903   -0.1519905   0.7143830
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1987288   -0.2593285   0.4901763
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1681678   -0.5060612   0.5405599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0503704   -0.4863999   0.2577516
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.1987779   -0.4047093   0.5429966
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1765882   -0.5466324   0.5616237
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0890578   -0.8653949   0.5551528
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.1425159   -0.1210595   0.3441214
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3050213    0.0674298   0.4820815
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.2152008    0.0913150   0.3221966
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1728635   -0.0446316   0.3450755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.3552177   -1.1442588   0.1434732
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0706666   -0.4539219   0.4059787
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0163606   -0.1063494   0.1254603
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0715915   -0.5387358   0.2537326
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.4263903   -0.1519905   0.7143830
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.2025176   -0.2373970   0.4860354
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1681678   -0.5060612   0.5405599
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0470446   -0.4837117   0.2611082
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.2025625   -0.4167525   0.5511519
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1765882   -0.5466324   0.5616237
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0890578   -0.8653949   0.5551528
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.1457498   -0.1177697   0.3471433
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.2966360    0.0589619   0.4742818
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.2117085    0.0874800   0.3190249
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1742026   -0.0419999   0.3455457

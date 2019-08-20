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
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                0      216     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                1        4     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                 0      208     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                 1        8     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium              0      201     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium              1        3     640
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                0      122     591
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                1       23     591
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                 0      218     591
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                 1       38     591
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium              0      166     591
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium              1       24     591
0-24 months   ki1119695-PROBIT           BELARUS                        High                0     2614   16010
0-24 months   ki1119695-PROBIT           BELARUS                        High                1       20   16010
0-24 months   ki1119695-PROBIT           BELARUS                        Low                 0     6242   16010
0-24 months   ki1119695-PROBIT           BELARUS                        Low                 1       71   16010
0-24 months   ki1119695-PROBIT           BELARUS                        Medium              0     7002   16010
0-24 months   ki1119695-PROBIT           BELARUS                        Medium              1       61   16010
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                0      599    9056
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                1        9    9056
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                 0     1537    9056
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                 1       45    9056
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium              0     6758    9056
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium              1      108    9056
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                0     3813   15071
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                1      177   15071
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                 0     5544   15071
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                 1      366   15071
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium              0     4859   15071
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium              1      312   15071
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                0      344    2985
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                1       30    2985
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                 0     2002    2985
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                 1      170    2985
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium              0      408    2985
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium              1       31    2985
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
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                0       40      96
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                1        1      96
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
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                0       37      98
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                1        0      98
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 0       35      98
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 1        1      98
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              0       25      98
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              1        0      98
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                0      129     206
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                1        0     206
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 0       58     206
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 1        0     206
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              0       19     206
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              1        0     206
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                0      213     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                1        6     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                 0      209     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                 1        6     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium              0      201     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium              1        2     637
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                0      116     541
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                1       15     541
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                 0      212     541
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                 1       28     541
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium              0      148     541
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium              1       22     541
0-6 months    ki1119695-PROBIT           BELARUS                        High                0     1854   13079
0-6 months    ki1119695-PROBIT           BELARUS                        High                1      160   13079
0-6 months    ki1119695-PROBIT           BELARUS                        Low                 0     4734   13079
0-6 months    ki1119695-PROBIT           BELARUS                        Low                 1      442   13079
0-6 months    ki1119695-PROBIT           BELARUS                        Medium              0     5390   13079
0-6 months    ki1119695-PROBIT           BELARUS                        Medium              1      499   13079
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                0       42     594
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                1        2     594
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                 0       99     594
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                 1        2     594
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium              0      439     594
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium              1       10     594
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                0      259     804
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                1       18     804
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                 0      209     804
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                 1       11     804
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium              0      288     804
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium              1       19     804
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                0       15      44
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                1        1      44
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                 0       12      44
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                 1        1      44
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium              0       15      44
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium              1        0      44
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
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                0      216     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                1        4     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                 0      208     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                 1        8     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium              0      201     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium              1        3     640
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                0      122     591
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                1       23     591
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                 0      218     591
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                 1       38     591
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium              0      166     591
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium              1       24     591
6-24 months   ki1119695-PROBIT           BELARUS                        High                0     2614   16010
6-24 months   ki1119695-PROBIT           BELARUS                        High                1       20   16010
6-24 months   ki1119695-PROBIT           BELARUS                        Low                 0     6242   16010
6-24 months   ki1119695-PROBIT           BELARUS                        Low                 1       71   16010
6-24 months   ki1119695-PROBIT           BELARUS                        Medium              0     7002   16010
6-24 months   ki1119695-PROBIT           BELARUS                        Medium              1       61   16010
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                0      599    9056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                1        9    9056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                 0     1537    9056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                 1       45    9056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium              0     6758    9056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium              1      108    9056
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                0     3813   15071
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                1      177   15071
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                 0     5544   15071
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                 1      366   15071
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium              0     4859   15071
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium              1      312   15071
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                0      344    2985
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                1       30    2985
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                 0     2002    2985
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                 1      170    2985
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium              0      408    2985
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium              1       31    2985


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
![](/tmp/e916bb1f-a00b-4b7c-a5a9-d8c8d28a0b02/e16b6281-db63-4e32-a473-37cd16945c07/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e916bb1f-a00b-4b7c-a5a9-d8c8d28a0b02/e16b6281-db63-4e32-a473-37cd16945c07/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e916bb1f-a00b-4b7c-a5a9-d8c8d28a0b02/e16b6281-db63-4e32-a473-37cd16945c07/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e916bb1f-a00b-4b7c-a5a9-d8c8d28a0b02/e16b6281-db63-4e32-a473-37cd16945c07/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0479762   0.0053159   0.0906364
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1089371   0.0829270   0.1349472
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0770914   0.0531683   0.1010145
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1378513   0.0700869   0.2056157
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1738801   0.1076266   0.2401335
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.1962820   0.1302698   0.2622941
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0223881   0.0079228   0.0368534
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0251736   0.0161255   0.0342217
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0332779   0.0189349   0.0476209
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1602523   0.0997080   0.2207965
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1483034   0.1044103   0.1921966
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1253629   0.0777392   0.1729867
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0078313   0.0023837   0.0132789
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0116408   0.0065144   0.0167673
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0087195   0.0035282   0.0139109
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0148026   0.0052031   0.0244022
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0284450   0.0202527   0.0366373
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0157297   0.0127864   0.0186730
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0319149   0.0067764   0.0570534
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0314607   0.0152340   0.0476873
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0409836   0.0206627   0.0613045
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0679451   0.0456489   0.0902413
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.0938067   0.0653136   0.1222998
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0760139   0.0483756   0.1036521
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0349588   0.0231601   0.0467575
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0548137   0.0387528   0.0708746
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0608364   0.0455504   0.0761224
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0451334   0.0375564   0.0527103
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0603175   0.0537497   0.0668853
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0621788   0.0548029   0.0695546
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0762785   0.0446588   0.1078981
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0788888   0.0649553   0.0928223
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0704222   0.0372810   0.1035633
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0331332   0.0152363   0.0510301
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0208027   0.0123135   0.0292919
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0283598   0.0144962   0.0422235
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1122182   0.0588744   0.1655620
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1114459   0.0718467   0.1510452
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1328249   0.0814771   0.1841727
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0817958   0.0523820   0.1112096
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0851174   0.0592798   0.1109550
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0834914   0.0537648   0.1132180
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0631465   0.0339747   0.0923182
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0479369   0.0187783   0.0770954
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0599224   0.0328115   0.0870334
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0479762   0.0053159   0.0906364
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1089371   0.0829270   0.1349472
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0770914   0.0531683   0.1010145
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1402555   0.0701863   0.2103247
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1802790   0.1132340   0.2473240
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.1944385   0.1290055   0.2598716
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0223881   0.0079228   0.0368534
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0251736   0.0161255   0.0342217
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0332779   0.0189349   0.0476209
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1608708   0.0995276   0.2222140
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1489450   0.1048818   0.1930081
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1246314   0.0767168   0.1725460
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0075148   0.0020199   0.0130098
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0119570   0.0066167   0.0172974
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0084891   0.0033139   0.0136642
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0148026   0.0052031   0.0244022
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0284450   0.0202527   0.0366373
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0157297   0.0127864   0.0186730
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0319149   0.0067764   0.0570534
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0314607   0.0152340   0.0476873
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0409836   0.0206627   0.0613045
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0675736   0.0452226   0.0899247
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.0931196   0.0649009   0.1213383
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0765845   0.0487106   0.1044584
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0348027   0.0230264   0.0465790
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0550093   0.0388859   0.0711327
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0612884   0.0458806   0.0766963
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0456264   0.0379273   0.0533256
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0601248   0.0534983   0.0667513
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0623531   0.0548490   0.0698573
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0765429   0.0448493   0.1082365
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0789147   0.0649963   0.0928331
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0701269   0.0372321   0.1030216


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0836390   0.0602327   0.1070453
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1733333   0.1349698   0.2116969
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0269142   0.0200799   0.0337484
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1438240   0.1155088   0.1721392
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0094941   0.0051728   0.0138153
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0178887   0.0151586   0.0206188
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0350350   0.0236276   0.0464425
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0789050   0.0639058   0.0939041
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0503949   0.0420785   0.0587113
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0567315   0.0525489   0.0609140
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0773869   0.0653840   0.0893899
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0253535   0.0185487   0.0321583
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1201479   0.0927249   0.1475708
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0841807   0.0567141   0.1116474
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0597015   0.0433139   0.0760891
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0836390   0.0602327   0.1070453
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1733333   0.1349698   0.2116969
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0269142   0.0200799   0.0337484
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1438240   0.1155088   0.1721392
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0094941   0.0051728   0.0138153
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0178887   0.0151586   0.0206188
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0350350   0.0236276   0.0464425
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0789050   0.0639058   0.0939041
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0503949   0.0420785   0.0587113
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0567315   0.0525489   0.0609140
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0773869   0.0653840   0.0893899


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              2.2706501   0.9774568   5.274762
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.6068688   0.7466768   3.458025
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.2613596   0.6790245   2.343108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.4238674   0.7853711   2.581453
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.1244213   0.5368195   2.355211
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.4864115   0.6836450   3.231822
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              0.9254373   0.5725906   1.495718
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.7822850   0.4577972   1.336771
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.4864449   0.8239746   2.681537
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.1134177   0.5047922   2.455860
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.9216182   0.9451494   3.906913
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0626274   0.5410654   2.086951
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9857678   0.3844846   2.527379
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.2841530   0.5062921   3.257110
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.3806253   0.8827989   2.159185
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.1187539   0.6856338   1.825479
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.5679525   1.0026623   2.451947
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.7402327   1.1422079   2.651365
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.3364288   1.1034714   1.618567
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.3776677   1.1284559   1.681916
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.0342214   0.6643097   1.610113
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              0.9232244   0.4942002   1.724692
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              0.6278511   0.3189189   1.236041
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              0.8559349   0.4132718   1.772742
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              0.9931182   0.5479982   1.799794
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.1836307   0.6406439   2.186834
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              1.0406082   0.8884000   1.218894
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.0207297   0.8699107   1.197697
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              0.7591378   0.3534532   1.630457
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.9489436   0.4968806   1.812294
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              2.2706501   0.9774568   5.274762
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.6068688   0.7466768   3.458025
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.2853616   0.6922847   2.386525
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.3863168   0.7593092   2.531083
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.1244213   0.5368195   2.355211
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.4864115   0.6836450   3.231822
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              0.9258669   0.5713819   1.500274
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.7747299   0.4507258   1.331644
6-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.5911248   0.8485688   2.983468
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.1296446   0.4946476   2.579810
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.9216182   0.9451494   3.906913
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0626274   0.5410654   2.086951
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9857678   0.3844846   2.527379
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.2841530   0.5062921   3.257110
6-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.3780454   0.8798327   2.158375
6-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.1333488   0.6930427   1.853392
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.5806054   1.0101307   2.473258
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.7610253   1.1553644   2.684184
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.3177621   1.0889581   1.594641
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.3666002   1.1179508   1.670553
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.0309864   0.6627078   1.603924
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              0.9161776   0.4911594   1.708979


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0356629    0.0068211   0.0645046
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0354820   -0.0253230   0.0962870
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0045261   -0.0088113   0.0178635
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0164282   -0.0685808   0.0357244
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0016627   -0.0027447   0.0060702
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0030861   -0.0062537   0.0124258
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0031201   -0.0197759   0.0260162
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0109599   -0.0072556   0.0291754
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0154361    0.0047909   0.0260813
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0115981    0.0049960   0.0182002
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0011084   -0.0282191   0.0304359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0077797   -0.0235015   0.0079421
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0079297   -0.0391711   0.0550304
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0023849   -0.0070549   0.0118247
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0034450   -0.0266360   0.0197460
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0356629    0.0068211   0.0645046
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0330779   -0.0297364   0.0958922
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0045261   -0.0088113   0.0178635
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0170468   -0.0700166   0.0359231
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0019792   -0.0025037   0.0064622
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0030861   -0.0062537   0.0124258
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0031201   -0.0197759   0.0260162
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0113313   -0.0069458   0.0296084
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0155922    0.0049661   0.0262182
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0111050    0.0044505   0.0177596
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0008441   -0.0285484   0.0302365


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.4263903   -0.1519905   0.7143830
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.2047040   -0.2320390   0.4866269
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1681678   -0.5060612   0.5405599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.1142245   -0.5422482   0.1950088
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.1751355   -0.4290906   0.5238921
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1725146   -0.5539660   0.5593648
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0890578   -0.8653949   0.5551528
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.1388998   -0.1240613   0.3403441
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3063029    0.0680193   0.4836635
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.2044387    0.0791515   0.3126797
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0143234   -0.4477997   0.3289415
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.3068493   -1.0925680   0.1838472
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0659993   -0.4204537   0.3858601
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0283310   -0.0913915   0.1349203
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0577031   -0.5262029   0.2669810
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.4263903   -0.1519905   0.7143830
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1908338   -0.2631918   0.4816703
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1681678   -0.5060612   0.5405599
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.1185252   -0.5540436   0.1949397
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.2084721   -0.4163633   0.5576584
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1725146   -0.5539660   0.5593648
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0890578   -0.8653949   0.5551528
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.1436074   -0.1206034   0.3455238
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3094000    0.0715285   0.4863296
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1957471    0.0691853   0.3051005
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0109070   -0.4521255   0.3262945

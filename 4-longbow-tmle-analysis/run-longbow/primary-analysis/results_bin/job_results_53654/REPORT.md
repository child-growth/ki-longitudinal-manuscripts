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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** mbmi

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mbmi             wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  --------------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight              0       30    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight              1       64    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                0       13    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                1       15    122
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight              0        6     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight              1       15     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                1        2     23
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight              0       49    178
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight              1       82    178
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                0       21    178
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                1       26    178
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight              0       20     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight              1       78     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                0        0     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                1        0     98
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              0        5     35
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              1       26     35
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                0        1     35
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                1        3     35
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              0       14     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              1       66     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                0        0     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                1        0     80
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              0        8     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              1       38     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                0        1     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                1        4     51
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight              0      288    744
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight              1      185    744
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                0      170    744
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                1      101    744
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight              0      152    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight              1      176    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                0       50    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                1       43    421
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight              0       88    303
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight              1      134    303
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                0       37    303
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                1       44    303
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              0       94    309
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              1      173    309
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                0       22    309
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                1       20    309
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              0      255    702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              1      432    702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                0        6    702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                1        9    702
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight              0      624    794
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight              1       27    794
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                0      135    794
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                1        8    794
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight              0      464   3956
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight              1     3309   3956
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                0       23   3956
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                1      160   3956
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              0      988   2693
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              1     1503   2693
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                0      101   2693
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                1      101   2693
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight              0       42     78
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight              1        6     78
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                0       23     78
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                1        7     78
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight              0     2531   7538
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight              1     1949   7538
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight                0     1821   7538
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight                1     1237   7538
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight              0        6     61
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight              1       40     61
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                0        6     61
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                1        9     61
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight              0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight              1       11     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                1        2     14
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight              0       15     83
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight              1       45     83
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                0       11     83
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                1       12     83
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight              0        9     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight              1       39     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                0        0     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                1        0     48
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight              0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight              1       11     11
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                1        0     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              0        5     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              1       24     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                0        0     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                1        0     29
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              0        1     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              1       12     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                1        1     14
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight              0       98    306
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight              1      102    306
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                0       48    306
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                1       58    306
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight              0       50    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight              1      128    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                0       14    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                1       31    223
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight              0       21    180
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight              1      110    180
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                0       15    180
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                1       34    180
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              0       16    196
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              1      160    196
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                0        4    196
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                1       16    196
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              0       96    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              1      232    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                0        3    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                1        5    336
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight              0      365   3814
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight              1     3276   3814
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                0       16   3814
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                1      157   3814
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              0      230   1790
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              1     1441   1790
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                0       24   1790
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                1       95   1790
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight              0        4      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight              1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight              0      870   4714
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight              1     1949   4714
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight                0      658   4714
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight                1     1237   4714
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight              0       24     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight              1       24     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                0        7     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                1        6     61
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight              0        5      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight              1        4      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                1        0      9
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight              0       34     95
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight              1       37     95
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                0       10     95
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                1       14     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight              0       11     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight              1       39     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                0        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                1        0     50
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              0        5     24
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              1       15     24
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                0        1     24
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                1        3     24
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              0        9     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              1       42     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                0        0     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                1        0     51
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              0        7     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              1       26     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                0        1     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                1        3     37
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight              0      190    438
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight              1       83    438
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                0      122    438
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                1       43    438
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight              0      102    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight              1       48    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                0       36    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                1       12    198
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight              0       67    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight              1       24    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                0       22    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                1       10    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              0       78    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              1       13    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                0       18    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                1        4    113
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              0      159    366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              1      200    366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                0        3    366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                1        4    366
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight              0      624    794
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight              1       27    794
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                0      135    794
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                1        8    794
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight              0       99    142
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight              1       33    142
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                0        7    142
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                1        3    142
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              0      758    903
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              1       62    903
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                0       77    903
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                1        6    903
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight              0       38     74
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight              1        6     74
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                0       23     74
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                1        7     74
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight              0     1661   2824
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight              1        0   2824
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight                0     1163   2824
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight                1        0   2824


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/502af459-286f-4aa9-809d-e20e551bdb79/ccac935d-df6e-4a57-9aa9-2f67940f7283/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/502af459-286f-4aa9-809d-e20e551bdb79/ccac935d-df6e-4a57-9aa9-2f67940f7283/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/502af459-286f-4aa9-809d-e20e551bdb79/ccac935d-df6e-4a57-9aa9-2f67940f7283/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/502af459-286f-4aa9-809d-e20e551bdb79/ccac935d-df6e-4a57-9aa9-2f67940f7283/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.6949134   0.5929071   0.7969197
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.4631959   0.2480844   0.6783074
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.6236515   0.5302827   0.7170204
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.5407529   0.3842519   0.6972539
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.3859668   0.3384645   0.4334690
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.3805396   0.3227435   0.4383356
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.5367963   0.4781617   0.5954309
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.4618879   0.3613976   0.5623782
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.6024580   0.5365626   0.6683534
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.5432177   0.4297453   0.6566901
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.6484721   0.5914370   0.7055072
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.4694743   0.3085923   0.6303563
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.6288210   0.5904220   0.6672199
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.6000000   0.3523180   0.8476820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0414747   0.0260799   0.0568695
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          NA                0.0559441   0.0191705   0.0927176
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.8772050   0.8667911   0.8876190
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight          NA                0.8595031   0.8097545   0.9092516
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.6037166   0.5843958   0.6230373
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.4967820   0.4299251   0.5636388
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.1250000   0.0290888   0.2209112
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                0.2333333   0.0868920   0.3797747
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                0.4352429   0.4206830   0.4498029
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                0.4045627   0.3872678   0.4218576
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.8695652   0.7664853   0.9726451
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.6000000   0.3773683   0.8226317
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.7506404   0.6343546   0.8669262
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.5425805   0.3268954   0.7582657
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.5051428   0.4350329   0.5752527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.5505265   0.4554479   0.6456051
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.7187060   0.6520666   0.7853455
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.6886115   0.5532458   0.8239771
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.8417701   0.7807844   0.9027558
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.6688725   0.5319526   0.8057924
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.8998892   0.8900310   0.9097475
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight          NA                0.8779192   0.8313250   0.9245134
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.8623919   0.8459294   0.8788545
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.7955813   0.7240124   0.8671502
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                0.6914183   0.6743876   0.7084491
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                0.6528124   0.6313577   0.6742671
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.5000000   0.3474407   0.6525593
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.4615385   0.2210093   0.7020676
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.5284489   0.3940990   0.6627988
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.6076379   0.3705955   0.8446804
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.2986397   0.2423324   0.3549470
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.2623019   0.1945190   0.3300848
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.3178818   0.2411021   0.3946614
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.2517164   0.1266311   0.3768018
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.2673318   0.1774156   0.3572480
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.3263544   0.1524524   0.5002565
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0414747   0.0260799   0.0568695
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          NA                0.0559441   0.0191705   0.0927176
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0756098   0.0575698   0.0936498
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.0722892   0.0168678   0.1277105
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.1363636   0.0329768   0.2397505
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                0.2333333   0.0877343   0.3789324


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6475410   0.5613826   0.7336993
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6067416   0.5268346   0.6866486
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3844086   0.3477135   0.4211037
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5874587   0.5306185   0.6442990
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6245955   0.5705077   0.6786833
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6282051   0.5902579   0.6661523
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0440806   0.0298222   0.0583390
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8768959   0.8667536   0.8870382
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5956183   0.5770555   0.6141810
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1666667   0.0842830   0.2490503
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4226585   0.4115120   0.4338051
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8032787   0.7044023   0.9021551
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6867470   0.5837430   0.7897510
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5228758   0.4664267   0.5793250
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8000000   0.7425836   0.8574164
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.9001049   0.8905121   0.9096977
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.8581006   0.8420009   0.8742002
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6758591   0.6624976   0.6892206
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4918033   0.3610932   0.6225134
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5368421   0.4223932   0.6512910
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2876712   0.2441703   0.3311721
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3030303   0.2377927   0.3682679
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0440806   0.0298222   0.0583390
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0753045   0.0581490   0.0924601
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1756757   0.0897916   0.2615597


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     0.6665520   0.4097940   1.0841825
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     0.8670754   0.6255377   1.2018775
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     0.9859387   0.8114169   1.1979971
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     0.8604529   0.6743610   1.0978975
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     0.9016689   0.7120492   1.1417846
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     0.7239699   0.5079898   1.0317774
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     0.9541667   0.6286319   1.4482784
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          Normal weight     1.3488733   0.6340510   2.8695789
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     0.9798200   0.9236037   1.0394580
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     0.8228728   0.7165353   0.9449913
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     1.8666667   0.6926702   5.0304525
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight     0.9295101   0.8804325   0.9813233
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     0.6900000   0.4673961   1.0186222
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     0.7228235   0.4704677   1.1105413
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     1.0898434   0.8740152   1.3589679
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     0.9581267   0.7706928   1.1911448
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     0.7946023   0.6390734   0.9879818
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     0.9755859   0.9241204   1.0299175
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     0.9225287   0.8414675   1.0113988
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight     0.9441641   0.9062079   0.9837101
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     0.9230769   0.5044974   1.6889501
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     1.1498519   0.7213291   1.8329488
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     0.8783221   0.6375900   1.2099463
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     0.7918554   0.4545552   1.3794476
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     1.2207844   0.6484139   2.2984000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          Normal weight     1.3488733   0.6340510   2.8695789
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     0.9560824   0.4283383   2.1340459
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     1.7111111   0.6408783   4.5685760


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0473724   -0.0973944    0.0026496
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0169100   -0.0651921    0.0313722
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0015582   -0.0284518    0.0253355
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0166062   -0.0421283    0.0089159
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0149993   -0.0497700    0.0197715
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0238766   -0.0470264   -0.0007269
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0006158   -0.0068812    0.0056495
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0026060   -0.0045811    0.0097930
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0003092   -0.0025046    0.0018863
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0080983   -0.0133077   -0.0028890
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0416667   -0.0265326    0.1098659
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.0125844   -0.0217559   -0.0034129
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0662865   -0.1326161    0.0000431
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0638934   -0.1344214    0.0066345
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0177330   -0.0232834    0.0587494
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0057016   -0.0358296    0.0244265
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0417701   -0.0822747   -0.0012656
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0002157   -0.0018370    0.0022683
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0042914   -0.0092074    0.0006247
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.0155592   -0.0265710   -0.0045473
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0081967   -0.0695069    0.0531135
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                 0.0083932   -0.0586998    0.0754862
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0109685   -0.0440245    0.0220875
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0148515   -0.0516302    0.0219272
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0090910   -0.0448210    0.0630030
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0026060   -0.0045811    0.0097930
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0003052   -0.0056628    0.0050524
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0393120   -0.0337215    0.1123456


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0731574   -0.1533315    0.0014434
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0278701   -0.1106983    0.0487813
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0040534   -0.0764714    0.0634927
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0319234   -0.0819897    0.0158262
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0255325   -0.0865814    0.0320864
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0382274   -0.0763967   -0.0014115
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0009803   -0.0110044    0.0089444
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0591178   -0.1182440    0.2083487
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0003526   -0.0028593    0.0021479
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0135965   -0.0223873   -0.0048812
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.2500000   -0.2838955    0.5618802
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.0297744   -0.0517045   -0.0083016
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0825200   -0.1719002    0.0000433
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0930378   -0.2038920    0.0076089
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0339144   -0.0479346    0.1093707
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0079965   -0.0511547    0.0333896
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0522127   -0.1052443   -0.0017256
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0002396   -0.0020435    0.0025175
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0050010   -0.0107545    0.0007197
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.0230213   -0.0394666   -0.0068362
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0166667   -0.1486245    0.1001314
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                 0.0156345   -0.1177843    0.1331284
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0381286   -0.1593844    0.0704455
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0490099   -0.1774872    0.0654491
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0328881   -0.1815511    0.2084087
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0591178   -0.1182440    0.2083487
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0040531   -0.0777733    0.0646246
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.2237762   -0.3205992    0.5437500

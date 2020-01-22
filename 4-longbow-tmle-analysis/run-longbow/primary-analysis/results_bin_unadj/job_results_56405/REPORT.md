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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mbmi             wast_rec90d   n_cell      n  outcome_variable 
------------  -------------------------  -----------------------------  --------------  ------------  -------  -----  -----------------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight              0       30    122  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight              1       64    122  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                0       13    122  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                1       15    122  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight              0        6     23  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight              1       15     23  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                0        0     23  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                1        2     23  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight              0       49    178  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight              1       82    178  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                0       21    178  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                1       26    178  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight              0       20     98  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight              1       78     98  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                0        0     98  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                1        0     98  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              0        5     35  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              1       26     35  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                0        1     35  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                1        3     35  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              0       14     80  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              1       66     80  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                0        0     80  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                1        0     80  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              0        8     51  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              1       38     51  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                0        1     51  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                1        4     51  wast_rec90d      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight              0      288    744  wast_rec90d      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight              1      185    744  wast_rec90d      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                0      170    744  wast_rec90d      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                1      101    744  wast_rec90d      
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight              0      152    421  wast_rec90d      
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight              1      176    421  wast_rec90d      
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                0       50    421  wast_rec90d      
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                1       43    421  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight              0       88    303  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight              1      134    303  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                0       37    303  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                1       44    303  wast_rec90d      
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              0       94    309  wast_rec90d      
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              1      173    309  wast_rec90d      
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                0       22    309  wast_rec90d      
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                1       20    309  wast_rec90d      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              0      255    702  wast_rec90d      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              1      432    702  wast_rec90d      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                0        6    702  wast_rec90d      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                1        9    702  wast_rec90d      
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight              0      624    794  wast_rec90d      
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight              1       27    794  wast_rec90d      
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                0      135    794  wast_rec90d      
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                1        8    794  wast_rec90d      
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight              0      464   3956  wast_rec90d      
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight              1     3309   3956  wast_rec90d      
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                0       23   3956  wast_rec90d      
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                1      160   3956  wast_rec90d      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              0      988   2693  wast_rec90d      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              1     1503   2693  wast_rec90d      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                0      101   2693  wast_rec90d      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                1      101   2693  wast_rec90d      
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight              0       42     78  wast_rec90d      
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight              1        6     78  wast_rec90d      
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                0       23     78  wast_rec90d      
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                1        7     78  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight              0     2531   7538  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight              1     1949   7538  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight                0     1821   7538  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight                1     1237   7538  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight              0        6     61  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight              1       40     61  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                0        6     61  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                1        9     61  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight              0        1     14  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight              1       11     14  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                0        0     14  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                1        2     14  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight              0       15     83  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight              1       45     83  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                0       11     83  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                1       12     83  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight              0        9     48  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight              1       39     48  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                0        0     48  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                1        0     48  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight              0        0     11  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight              1       11     11  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                0        0     11  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                1        0     11  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              0        5     29  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              1       24     29  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                0        0     29  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                1        0     29  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              0        1     14  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              1       12     14  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                0        0     14  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                1        1     14  wast_rec90d      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight              0       98    306  wast_rec90d      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight              1      102    306  wast_rec90d      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                0       48    306  wast_rec90d      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                1       58    306  wast_rec90d      
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight              0       50    223  wast_rec90d      
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight              1      128    223  wast_rec90d      
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                0       14    223  wast_rec90d      
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                1       31    223  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight              0       21    180  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight              1      110    180  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                0       15    180  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                1       34    180  wast_rec90d      
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              0       16    196  wast_rec90d      
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              1      160    196  wast_rec90d      
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                0        4    196  wast_rec90d      
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                1       16    196  wast_rec90d      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              0       96    336  wast_rec90d      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              1      232    336  wast_rec90d      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                0        3    336  wast_rec90d      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                1        5    336  wast_rec90d      
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight              0      365   3814  wast_rec90d      
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight              1     3276   3814  wast_rec90d      
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                0       16   3814  wast_rec90d      
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                1      157   3814  wast_rec90d      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              0      230   1790  wast_rec90d      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              1     1441   1790  wast_rec90d      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                0       24   1790  wast_rec90d      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                1       95   1790  wast_rec90d      
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight              0        4      4  wast_rec90d      
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight              1        0      4  wast_rec90d      
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                0        0      4  wast_rec90d      
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                1        0      4  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight              0      870   4714  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight              1     1949   4714  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight                0      658   4714  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight                1     1237   4714  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight              0       24     61  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight              1       24     61  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                0        7     61  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                1        6     61  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight              0        5      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight              1        4      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                0        0      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                1        0      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight              0       34     95  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight              1       37     95  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                0       10     95  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                1       14     95  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight              0       11     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight              1       39     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                0        0     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                1        0     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              0        5     24  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              1       15     24  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                0        1     24  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                1        3     24  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              0        9     51  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              1       42     51  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                0        0     51  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                1        0     51  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              0        7     37  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              1       26     37  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                0        1     37  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                1        3     37  wast_rec90d      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight              0      190    438  wast_rec90d      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight              1       83    438  wast_rec90d      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                0      122    438  wast_rec90d      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                1       43    438  wast_rec90d      
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight              0      102    198  wast_rec90d      
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight              1       48    198  wast_rec90d      
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                0       36    198  wast_rec90d      
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                1       12    198  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight              0       67    123  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight              1       24    123  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                0       22    123  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                1       10    123  wast_rec90d      
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              0       78    113  wast_rec90d      
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              1       13    113  wast_rec90d      
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                0       18    113  wast_rec90d      
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                1        4    113  wast_rec90d      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              0      159    366  wast_rec90d      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              1      200    366  wast_rec90d      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                0        3    366  wast_rec90d      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                1        4    366  wast_rec90d      
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight              0      624    794  wast_rec90d      
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight              1       27    794  wast_rec90d      
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                0      135    794  wast_rec90d      
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                1        8    794  wast_rec90d      
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight              0       99    142  wast_rec90d      
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight              1       33    142  wast_rec90d      
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                0        7    142  wast_rec90d      
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                1        3    142  wast_rec90d      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              0      758    903  wast_rec90d      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              1       62    903  wast_rec90d      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                0       77    903  wast_rec90d      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                1        6    903  wast_rec90d      
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight              0       38     74  wast_rec90d      
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight              1        6     74  wast_rec90d      
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                0       23     74  wast_rec90d      
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                1        7     74  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight              0     1661   2824  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight              1        0   2824  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight                0     1163   2824  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight                1        0   2824  wast_rec90d      


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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/504e087a-6aae-475a-ab5e-6d2de5be7fd2/7e1dc124-219e-432c-b2fb-5d8068190328/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/504e087a-6aae-475a-ab5e-6d2de5be7fd2/7e1dc124-219e-432c-b2fb-5d8068190328/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/504e087a-6aae-475a-ab5e-6d2de5be7fd2/7e1dc124-219e-432c-b2fb-5d8068190328/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/504e087a-6aae-475a-ab5e-6d2de5be7fd2/7e1dc124-219e-432c-b2fb-5d8068190328/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.6808511   0.5815527   0.7801494
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.5357143   0.3749740   0.6964546
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.6259542   0.5328629   0.7190455
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.5531915   0.3998138   0.7065691
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.3911205   0.3433971   0.4388439
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.3726937   0.3160952   0.4292922
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.5365854   0.4780574   0.5951134
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.4623656   0.3638762   0.5608549
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.6036036   0.5376831   0.6695241
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.5432099   0.4319946   0.6544251
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.6479401   0.5908723   0.7050078
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.4761905   0.3221133   0.6302677
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.6288210   0.5904220   0.6672199
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.6000000   0.3523180   0.8476820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0414747   0.0260799   0.0568695
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          NA                0.0559441   0.0191705   0.0927176
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.8770209   0.8666218   0.8874200
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight          NA                0.8743169   0.8284539   0.9201800
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.6033721   0.5840502   0.6226941
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.5000000   0.4345373   0.5654627
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.1250000   0.0290888   0.2209112
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                0.2333333   0.0868920   0.3797747
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                0.4350446   0.4204788   0.4496104
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                0.4045128   0.3872303   0.4217952
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.8695652   0.7664853   0.9726451
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.6000000   0.3773683   0.8226317
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.7500000   0.6348133   0.8651867
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.5217391   0.3201168   0.7233615
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.5100000   0.4401675   0.5798325
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.5471698   0.4514150   0.6429246
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.7191011   0.6526289   0.7855734
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.6888889   0.5565481   0.8212297
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.8396947   0.7787342   0.9006551
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.6938776   0.5649886   0.8227665
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.8997528   0.8899208   0.9095848
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight          NA                0.9075144   0.8638586   0.9511703
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.8623579   0.8458945   0.8788213
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.7983193   0.7270042   0.8696344
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                0.6913799   0.6743343   0.7084256
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                0.6527704   0.6313237   0.6742172
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.5000000   0.3474407   0.6525593
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.4615385   0.2210093   0.7020676
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.5211268   0.3887216   0.6535319
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.5833333   0.3604966   0.8061700
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.3040293   0.2472596   0.3607990
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.2606061   0.1936822   0.3275299
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.3200000   0.2435094   0.3964906
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.2500000   0.1270597   0.3729403
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.2637363   0.1740755   0.3533970
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.3125000   0.1324872   0.4925128
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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     0.7868304   0.5636090   1.0984601
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     0.8837571   0.6451836   1.2105496
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     0.9528872   0.7841920   1.1578721
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     0.8616813   0.6782339   1.0947472
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     0.8999447   0.7134825   1.1351372
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     0.7349298   0.5254528   1.0279170
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     0.9541667   0.6286319   1.4482784
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          Normal weight     1.3488733   0.6340510   2.8695789
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     0.9969168   0.9447190   1.0519987
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     0.8286760   0.7241726   0.9482600
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     1.8666667   0.6926702   5.0304525
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight     0.9298190   0.8806933   0.9816848
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     0.6900000   0.4673961   1.0186222
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     0.6956522   0.4589546   1.0544223
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     1.0728820   0.8591064   1.3398523
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     0.9579861   0.7740550   1.1856229
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     0.8263451   0.6769325   1.0087360
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     1.0086264   0.9600778   1.0596300
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     0.9257402   0.8449224   1.0142883
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight     0.9441559   0.9061588   0.9837463
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     0.9230769   0.5044974   1.6889501
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     1.1193694   0.7076813   1.7705538
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     0.8571742   0.6239877   1.1775031
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     0.7812500   0.4520464   1.3501968
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     1.1848958   0.6069821   2.3130472
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          Normal weight     1.3488733   0.6340510   2.8695789
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     0.9560824   0.4283383   2.1340459
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     1.7111111   0.6408783   4.5685760


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0333101   -0.0781269    0.0115068
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0192126   -0.0671731    0.0287479
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0067119   -0.0337199    0.0202961
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0163953   -0.0417725    0.0089818
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0161449   -0.0507237    0.0184339
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0233446   -0.0463504   -0.0003388
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0006158   -0.0068812    0.0056495
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0026060   -0.0045811    0.0097930
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0001251   -0.0023002    0.0020500
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0077539   -0.0129369   -0.0025708
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0416667   -0.0265326    0.1098659
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.0123861   -0.0215641   -0.0032081
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0662865   -0.1326161    0.0000431
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0632530   -0.1321914    0.0056853
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0128758   -0.0281999    0.0539515
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0060966   -0.0360118    0.0238185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0396947   -0.0795722    0.0001829
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0003521   -0.0016783    0.0023824
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0042573   -0.0091744    0.0006598
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.0155208   -0.0265468   -0.0044947
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0081967   -0.0695069    0.0531135
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                 0.0157153   -0.0504677    0.0818984
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0163581   -0.0494776    0.0167614
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0169697   -0.0526533    0.0187139
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0126865   -0.0397556    0.0651286
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0026060   -0.0045811    0.0097930
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0003052   -0.0056628    0.0050524
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0393120   -0.0337215    0.1123456


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0514409   -0.1229364    0.0155026
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0316653   -0.1139484    0.0445400
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0174603   -0.0900408    0.0502874
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0315180   -0.0812990    0.0159712
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0274825   -0.0881844    0.0298332
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0373756   -0.0752824   -0.0008051
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0009803   -0.0110044    0.0089444
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0591178   -0.1182440    0.2083487
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0001426   -0.0026262    0.0023348
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0130182   -0.0217632   -0.0043481
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.2500000   -0.2838955    0.5618802
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.0293052   -0.0512506   -0.0078180
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0825200   -0.1719002    0.0000433
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0921053   -0.2004799    0.0064857
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0246250   -0.0572330    0.1001450
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0085506   -0.0513998    0.0325522
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0496183   -0.1017453    0.0000424
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0003911   -0.0018672    0.0026443
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0049613   -0.0107160    0.0007606
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.0229645   -0.0394308   -0.0067591
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0166667   -0.1486245    0.1001314
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                 0.0292737   -0.1023828    0.1452066
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0568638   -0.1780787    0.0518791
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0560000   -0.1803315    0.0552349
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0458953   -0.1620130    0.2166045
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0591178   -0.1182440    0.2083487
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0040531   -0.0777733    0.0646246
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.2237762   -0.3205992    0.5437500

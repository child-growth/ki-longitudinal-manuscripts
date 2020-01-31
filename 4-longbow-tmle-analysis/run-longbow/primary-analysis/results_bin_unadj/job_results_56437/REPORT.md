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

**Outcome Variable:** ever_wasted

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

agecat        studyid                    country                        mbmi             ever_wasted   n_cell       n  outcome_variable 
------------  -------------------------  -----------------------------  --------------  ------------  -------  ------  -----------------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight              0      154     254  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight              1       68     254  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                0       15     254  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                1       17     254  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight              0      194     221  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight              1       17     221  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                0        8     221  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                1        2     221  ever_wasted      
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight              0      105     242  ever_wasted      
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight              1       88     242  ever_wasted      
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                0       20     242  ever_wasted      
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                1       29     242  ever_wasted      
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight              0      164     238  ever_wasted      
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight              1       74     238  ever_wasted      
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                0        0     238  ever_wasted      
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                1        0     238  ever_wasted      
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              0      260     290  ever_wasted      
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              1       25     290  ever_wasted      
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                0        3     290  ever_wasted      
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                1        2     290  ever_wasted      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              0      205     270  ever_wasted      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              1       57     270  ever_wasted      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                0        8     270  ever_wasted      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                1        0     270  ever_wasted      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              0      210     256  ever_wasted      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              1       32     256  ever_wasted      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                0       10     256  ever_wasted      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                1        4     256  ever_wasted      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight              0      646    1390  ever_wasted      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight              1      373    1390  ever_wasted      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                0      173    1390  ever_wasted      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                1      198    1390  ever_wasted      
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight              0      282     624  ever_wasted      
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight              1      238     624  ever_wasted      
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                0       44     624  ever_wasted      
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                1       60     624  ever_wasted      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight              0      364     669  ever_wasted      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight              1      178     669  ever_wasted      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                0       64     669  ever_wasted      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                1       63     669  ever_wasted      
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              0      470     755  ever_wasted      
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              1      217     755  ever_wasted      
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                0       36     755  ever_wasted      
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                1       32     755  ever_wasted      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              0     1764    2345  ever_wasted      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              1      543    2345  ever_wasted      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                0       25    2345  ever_wasted      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                1       13    2345  ever_wasted      
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight              0     2161    3217  ever_wasted      
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight              1      602    3217  ever_wasted      
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                0      323    3217  ever_wasted      
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                1      131    3217  ever_wasted      
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight              0     9515   13728  ever_wasted      
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight              1     3690   13728  ever_wasted      
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                0      346   13728  ever_wasted      
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                1      177   13728  ever_wasted      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              0     7029    9797  ever_wasted      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              1     2252    9797  ever_wasted      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                0      347    9797  ever_wasted      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                1      169    9797  ever_wasted      
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight              0      651     837  ever_wasted      
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight              1       41     837  ever_wasted      
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                0      120     837  ever_wasted      
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                1       25     837  ever_wasted      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight              0    12433   26836  ever_wasted      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight              1     4127   26836  ever_wasted      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight                0     7478   26836  ever_wasted      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight                1     2798   26836  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight              0      177     254  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight              1       45     254  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                0       19     254  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                1       13     254  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight              0      199     221  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight              1       12     221  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                0        8     221  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                1        2     221  ever_wasted      
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight              0      135     242  ever_wasted      
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight              1       58     242  ever_wasted      
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                0       28     242  ever_wasted      
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                1       21     242  ever_wasted      
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight              0      190     238  ever_wasted      
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight              1       48     238  ever_wasted      
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                0        0     238  ever_wasted      
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                1        0     238  ever_wasted      
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight              0      274     290  ever_wasted      
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight              1       11     290  ever_wasted      
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                0        5     290  ever_wasted      
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                1        0     290  ever_wasted      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              0      234     270  ever_wasted      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              1       28     270  ever_wasted      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                0        8     270  ever_wasted      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                1        0     270  ever_wasted      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              0      230     256  ever_wasted      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              1       12     256  ever_wasted      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                0       13     256  ever_wasted      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                1        1     256  ever_wasted      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight              0      819    1383  ever_wasted      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight              1      195    1383  ever_wasted      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                0      266    1383  ever_wasted      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                1      103    1383  ever_wasted      
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight              0      341     622  ever_wasted      
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight              1      178     622  ever_wasted      
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                0       59     622  ever_wasted      
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                1       44     622  ever_wasted      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight              0      414     669  ever_wasted      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight              1      128     669  ever_wasted      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                0       79     669  ever_wasted      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                1       48     669  ever_wasted      
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              0      513     755  ever_wasted      
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              1      174     755  ever_wasted      
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                0       48     755  ever_wasted      
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                1       20     755  ever_wasted      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              0     1986    2345  ever_wasted      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              1      321    2345  ever_wasted      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                0       30    2345  ever_wasted      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                1        8    2345  ever_wasted      
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight              0     9606   13728  ever_wasted      
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight              1     3599   13728  ever_wasted      
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                0      351   13728  ever_wasted      
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                1      172   13728  ever_wasted      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              0     7587    9760  ever_wasted      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              1     1664    9760  ever_wasted      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                0      391    9760  ever_wasted      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                1      118    9760  ever_wasted      
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight              0      220     271  ever_wasted      
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight              1        4     271  ever_wasted      
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                0       47     271  ever_wasted      
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                1        0     271  ever_wasted      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight              0    13683   26739  ever_wasted      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight              1     2817   26739  ever_wasted      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight                0     8344   26739  ever_wasted      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight                1     1895   26739  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight              0      174     240  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight              1       35     240  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                0       23     240  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                1        8     240  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight              0      191     206  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight              1        6     206  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                0        9     206  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                1        0     206  ever_wasted      
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight              0      138     234  ever_wasted      
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight              1       48     234  ever_wasted      
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                0       32     234  ever_wasted      
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                1       16     234  ever_wasted      
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight              0      199     235  ever_wasted      
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight              1       36     235  ever_wasted      
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                0        0     235  ever_wasted      
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                1        0     235  ever_wasted      
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              0      248     269  ever_wasted      
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              1       16     269  ever_wasted      
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                0        3     269  ever_wasted      
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                1        2     269  ever_wasted      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              0      210     254  ever_wasted      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              1       37     254  ever_wasted      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                0        7     254  ever_wasted      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                1        0     254  ever_wasted      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              0      207     245  ever_wasted      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight              1       25     245  ever_wasted      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                0       10     245  ever_wasted      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                1        3     245  ever_wasted      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight              0      689    1277  ever_wasted      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight              1      248    1277  ever_wasted      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                0      195    1277  ever_wasted      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                1      145    1277  ever_wasted      
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight              0      327     542  ever_wasted      
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight              1      122     542  ever_wasted      
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                0       56     542  ever_wasted      
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                1       37     542  ever_wasted      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight              0      434     614  ever_wasted      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight              1       72     614  ever_wasted      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                0       81     614  ever_wasted      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                1       27     614  ever_wasted      
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              0      585     730  ever_wasted      
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight              1       78     730  ever_wasted      
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                0       49     730  ever_wasted      
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                1       18     730  ever_wasted      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              0     1630    1972  ever_wasted      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              1      312    1972  ever_wasted      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                0       24    1972  ever_wasted      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                1        6    1972  ever_wasted      
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight              0     2161    3217  ever_wasted      
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight              1      602    3217  ever_wasted      
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                0      323    3217  ever_wasted      
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                1      131    3217  ever_wasted      
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight              0    13066   13720  ever_wasted      
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight              1      131   13720  ever_wasted      
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                0      513   13720  ever_wasted      
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                1       10   13720  ever_wasted      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              0     7367    8597  ever_wasted      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight              1      772    8597  ever_wasted      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                0      382    8597  ever_wasted      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                1       76    8597  ever_wasted      
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight              0      646     823  ever_wasted      
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight              1       38     823  ever_wasted      
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                0      114     823  ever_wasted      
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                1       25     823  ever_wasted      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight              0     8966   17246  ever_wasted      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight              1     1661   17246  ever_wasted      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight                0     5456   17246  ever_wasted      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight                1     1163   17246  ever_wasted      


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
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/dd1b1613-35a6-42b8-9796-691d5ef8e355/9323e3c3-b69f-4176-9a86-65532c2fa92e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dd1b1613-35a6-42b8-9796-691d5ef8e355/9323e3c3-b69f-4176-9a86-65532c2fa92e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/dd1b1613-35a6-42b8-9796-691d5ef8e355/9323e3c3-b69f-4176-9a86-65532c2fa92e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dd1b1613-35a6-42b8-9796-691d5ef8e355/9323e3c3-b69f-4176-9a86-65532c2fa92e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.3063063   0.2455502   0.3670624
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.5312500   0.3580093   0.7044907
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.4559585   0.3855465   0.5263706
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.5918367   0.4539358   0.7297376
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.3660451   0.3102909   0.4217993
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.5336927   0.4498698   0.6175156
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.4576923   0.4148370   0.5005476
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.5769231   0.4818958   0.6719504
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.3284133   0.2888461   0.3679804
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.4960630   0.4090413   0.5830847
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.3158661   0.2810821   0.3506501
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.4705882   0.3518751   0.5893014
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.2353706   0.2178996   0.2528416
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.3421053   0.2443123   0.4398983
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.2178791   0.1880785   0.2476797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          NA                0.2885463   0.2268110   0.3502815
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.2794396   0.2177522   0.3411271
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight          NA                0.3384321   0.2526163   0.4242480
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.2426463   0.2339244   0.2513681
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.3275194   0.2870242   0.3680146
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.0592486   0.0416478   0.0768493
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                0.1724138   0.1108938   0.2339338
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                0.2492150   0.2415794   0.2568505
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                0.2722849   0.2628981   0.2816718
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.2027027   0.1497159   0.2556896
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.4062500   0.2357485   0.5767515
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.3005181   0.2357007   0.3653356
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.4285714   0.2897227   0.5674201
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.1923077   0.1504292   0.2341862
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.2791328   0.2131880   0.3450776
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.3429672   0.3020945   0.3838400
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.4271845   0.3315765   0.5227924
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.2361624   0.2003792   0.2719456
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.3779528   0.2935607   0.4623448
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.2532751   0.2207339   0.2858163
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.2941176   0.1857479   0.4024874
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.1391417   0.1248886   0.1533949
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.2105263   0.1264891   0.2945635
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.2725483   0.2100757   0.3350209
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight          NA                0.3288719   0.2431637   0.4145801
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.1798724   0.1720454   0.1876995
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.2318271   0.1951645   0.2684897
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                0.1707273   0.1638040   0.1776505
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                0.1850767   0.1769912   0.1931621
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.1674641   0.1167366   0.2181917
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.2580645   0.1037094   0.4124197
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.2580645   0.1950459   0.3210831
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.3333333   0.1996888   0.4669779
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.2646745   0.2147779   0.3145711
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.4264706   0.3473288   0.5056124
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.2717149   0.2305305   0.3128994
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.3978495   0.2982815   0.4974174
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.1422925   0.1118285   0.1727565
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.2500000   0.1682683   0.3317317
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.1176471   0.0931056   0.1421885
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.2686567   0.1624461   0.3748673
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.1606591   0.1441588   0.1771595
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.2000001   0.1128773   0.2871230
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.2178791   0.1880785   0.2476797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          NA                0.2885463   0.2268110   0.3502815
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.0099265   0.0066961   0.0131569
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight          NA                0.0191205   0.0048384   0.0334025
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0948519   0.0884859   0.1012180
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.1659389   0.1318656   0.2000121
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.0555556   0.0383790   0.0727321
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                0.1798561   0.1159691   0.2437431
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                0.1563000   0.1489995   0.1636005
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                0.1757063   0.1660643   0.1853483


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3346457   0.2765014   0.3927899
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4834711   0.4203794   0.5465628
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4107914   0.3512139   0.4703688
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3602392   0.3238339   0.3966444
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3298013   0.2962438   0.3633589
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2371002   0.2198828   0.2543177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2278520   0.2008644   0.2548397
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2816871   0.2197838   0.3435903
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2471165   0.2385749   0.2556580
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0788530   0.0605839   0.0971222
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2580489   0.2515797   0.2645181
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2283465   0.1766220   0.2800709
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3264463   0.2672449   0.3856476
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2154736   0.1691818   0.2617655
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2630792   0.2296894   0.2964690
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2569536   0.2257649   0.2881424
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1402985   0.1262390   0.1543580
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.2746941   0.2120609   0.3373272
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1825820   0.1749172   0.1902467
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1762220   0.1706009   0.1818431
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1791667   0.1305478   0.2277856
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2735043   0.2162683   0.3307402
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3077525   0.2591695   0.3563356
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2933579   0.2549918   0.3317241
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612378   0.1321259   0.1903497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1612576   0.1450216   0.1774936
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2278520   0.2008644   0.2548397
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0102770   0.0071241   0.0134298
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0986391   0.0923357   0.1049424
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0765492   0.0583736   0.0947248
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1637481   0.1576337   0.1698625


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     1.734375   1.1840739   2.540430
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     1.298006   0.9814694   1.716629
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     1.457997   1.2949453   1.641579
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     1.260504   1.0429408   1.523453
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     1.510484   1.2209357   1.868699
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     1.489835   1.1313493   1.961912
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.453475   1.0817938   1.952857
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          Normal weight     1.324341   1.0186019   1.721849
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     1.211110   1.0373309   1.414002
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     1.349781   1.1867060   1.535266
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     2.910008   1.8291752   4.629490
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight     1.092570   1.0483671   1.138638
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     2.004167   1.2223602   3.286007
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     1.426108   0.9663206   2.104669
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     1.451491   1.2601262   1.671916
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     1.245555   0.9665910   1.605029
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     1.600394   1.2218993   2.096130
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     1.161258   0.7860679   1.715525
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.513035   1.0020087   2.284685
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     1.206656   1.0257623   1.419449
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     1.288842   1.0938683   1.518568
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight     1.084049   1.0258322   1.145569
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     1.541014   0.7881894   3.012884
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     1.291667   0.8077416   2.065516
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     1.611302   1.3044069   1.990403
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     1.464217   1.0927895   1.961887
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     1.756944   1.1886106   2.597027
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     2.283582   1.4604522   3.570639
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.244873   0.7957071   1.947586
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight          Normal weight     1.324341   1.0186019   1.721849
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     1.926204   0.8523040   4.353213
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     1.749451   1.4095572   2.171306
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     3.237410   2.0215266   5.184608
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight     1.124161   1.0499965   1.203563


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.0283394    0.0034487   0.0532300
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.0275125   -0.0045877   0.0596128
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.0447462    0.0295293   0.0599631
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.0198718    0.0021509   0.0375927
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.0318259    0.0130062   0.0506456
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.0139352    0.0023538   0.0255167
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0017296   -0.0008131   0.0042724
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0099729   -0.0003828   0.0203286
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.0022475    0.0001773   0.0043176
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0044702    0.0022564   0.0066840
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.0196045    0.0081455   0.0310635
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                0.0088339    0.0046798   0.0129881
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.0256438    0.0016595   0.0496280
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.0259281   -0.0057712   0.0576275
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.0231659    0.0131297   0.0332021
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.0139459   -0.0034475   0.0313393
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.0269169    0.0090120   0.0448218
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.0036785   -0.0065466   0.0139036
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0011568   -0.0010052   0.0033187
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.0021458    0.0000541   0.0042375
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0027095    0.0007410   0.0046780
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                0.0054947    0.0017197   0.0092697
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.0117026   -0.0096347   0.0330398
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.0154398   -0.0151196   0.0459991
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.0430781    0.0239435   0.0622126
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.0216430    0.0027253   0.0405607
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.0189453    0.0032632   0.0346274
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.0138598    0.0033662   0.0243534
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0005985   -0.0016285   0.0028255
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0099729   -0.0003828   0.0203286
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.0003505   -0.0002018   0.0009027
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0037871    0.0019099   0.0056643
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.0209937    0.0093756   0.0326117
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                0.0074481    0.0030414   0.0118548


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.0846847    0.0073253   0.1560154
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.0569062   -0.0122225   0.1213139
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.1089269    0.0737894   0.1427314
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.0416107    0.0036534   0.0781220
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.0883465    0.0345568   0.1391393
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.0422534    0.0065009   0.0767193
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0072948   -0.0035151   0.0179883
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0437693   -0.0035915   0.0888950
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.0079786    0.0006047   0.0152980
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0180894    0.0090976   0.0269996
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.2486206    0.1007232   0.3721944
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                0.0342335    0.0179901   0.0502082
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.1123020    0.0024570   0.2100513
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.0794255   -0.0228573   0.1714802
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.1075116    0.0670136   0.1462517
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.0390738   -0.0109282   0.0866026
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.1023147    0.0320906   0.1674438
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.0143159   -0.0262793   0.0533054
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0082450   -0.0073186   0.0235682
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.0078115    0.0001253   0.0154387
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0148400    0.0040096   0.0255527
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                0.0311807    0.0094469   0.0524377
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.0653166   -0.0608054   0.1764436
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.0564516   -0.0619620   0.1616616
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.1399763    0.0743124   0.2009823
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.0737768    0.0071712   0.1359140
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.1174991    0.0163952   0.2082106
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.1053922    0.0238808   0.1800968
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0037114   -0.0102191   0.0174499
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0437693   -0.0035915   0.0888950
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.0341024   -0.0228136   0.0878513
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0383936    0.0193005   0.0571150
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.2742504    0.1211184   0.4007015
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                0.0454853    0.0182496   0.0719654

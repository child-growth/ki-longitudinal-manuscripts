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

**Outcome Variable:** y_rate_wtkg

## Predictor Variables

**Intervention Variable:** enstunt

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        enstunt    n_cell       n  outcome_variable 
-------------  -------------------------  -----------------------------  --------  -------  ------  -----------------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0             205     246  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1              41     246  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0             192     218  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1              26     218  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          0             201     238  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          1              37     238  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          0             206     232  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          1              26     232  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           0             246     282  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           1              36     282  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             240     272  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              32     272  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             200     237  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              37     237  y_rate_wtkg      
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0             262     331  y_rate_wtkg      
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              69     331  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA                          0             345     394  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA                          1              49     394  y_rate_wtkg      
0-3 months     ki1000109-EE               PAKISTAN                       0             179     320  y_rate_wtkg      
0-3 months     ki1000109-EE               PAKISTAN                       1             141     320  y_rate_wtkg      
0-3 months     ki1000109-ResPak           PAKISTAN                       0              55      80  y_rate_wtkg      
0-3 months     ki1000109-ResPak           PAKISTAN                       1              25      80  y_rate_wtkg      
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0             919    1265  y_rate_wtkg      
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1             346    1265  y_rate_wtkg      
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0             477     565  y_rate_wtkg      
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1              88     565  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0             576     640  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1              64     640  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0             624     725  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1             101     725  y_rate_wtkg      
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1885    2019  y_rate_wtkg      
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             134    2019  y_rate_wtkg      
0-3 months     ki1101329-Keneba           GAMBIA                         0            1437    1571  y_rate_wtkg      
0-3 months     ki1101329-Keneba           GAMBIA                         1             134    1571  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0             422     509  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1              87     509  y_rate_wtkg      
0-3 months     ki1114097-CMIN             BANGLADESH                     0              26      43  y_rate_wtkg      
0-3 months     ki1114097-CMIN             BANGLADESH                     1              17      43  y_rate_wtkg      
0-3 months     ki1114097-CONTENT          PERU                           0              28      29  y_rate_wtkg      
0-3 months     ki1114097-CONTENT          PERU                           1               1      29  y_rate_wtkg      
0-3 months     ki1119695-PROBIT           BELARUS                        0           15200   15327  y_rate_wtkg      
0-3 months     ki1119695-PROBIT           BELARUS                        1             127   15327  y_rate_wtkg      
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0            7321    8172  y_rate_wtkg      
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1             851    8172  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          GUATEMALA                      0             721     798  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          GUATEMALA                      1              77     798  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          INDIA                          0            5881    6667  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          INDIA                          1             786    6667  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0           13842   20288  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1            6446   20288  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0            1762    2500  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1             738    2500  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0             196     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1              37     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0             183     208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1              25     208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          0             195     230  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          1              35     230  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          0             206     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          1              27     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           0             233     267  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           1              34     267  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             218     243  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              25     243  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             201     239  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              38     239  y_rate_wtkg      
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0             252     322  y_rate_wtkg      
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              70     322  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA                          0             349     399  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA                          1              50     399  y_rate_wtkg      
3-6 months     ki1000109-EE               PAKISTAN                       0             157     275  y_rate_wtkg      
3-6 months     ki1000109-EE               PAKISTAN                       1             118     275  y_rate_wtkg      
3-6 months     ki1000109-ResPak           PAKISTAN                       0             116     156  y_rate_wtkg      
3-6 months     ki1000109-ResPak           PAKISTAN                       1              40     156  y_rate_wtkg      
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0             830    1118  y_rate_wtkg      
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1             288    1118  y_rate_wtkg      
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0             440     522  y_rate_wtkg      
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1              82     522  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0             539     601  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1              62     601  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0             602     702  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1             100     702  y_rate_wtkg      
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1548    1664  y_rate_wtkg      
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             116    1664  y_rate_wtkg      
3-6 months     ki1101329-Keneba           GAMBIA                         0            1263    1399  y_rate_wtkg      
3-6 months     ki1101329-Keneba           GAMBIA                         1             136    1399  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0             392     469  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1              77     469  y_rate_wtkg      
3-6 months     ki1114097-CMIN             BANGLADESH                     0             114     184  y_rate_wtkg      
3-6 months     ki1114097-CMIN             BANGLADESH                     1              70     184  y_rate_wtkg      
3-6 months     ki1114097-CONTENT          PERU                           0             196     214  y_rate_wtkg      
3-6 months     ki1114097-CONTENT          PERU                           1              18     214  y_rate_wtkg      
3-6 months     ki1119695-PROBIT           BELARUS                        0           13216   13318  y_rate_wtkg      
3-6 months     ki1119695-PROBIT           BELARUS                        1             102   13318  y_rate_wtkg      
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0            5511    6138  y_rate_wtkg      
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1             627    6138  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          GUATEMALA                      0             696     809  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          GUATEMALA                      1             113     809  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          INDIA                          0            5926    6709  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          INDIA                          1             783    6709  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0            8836   12720  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1            3884   12720  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0            1309    1818  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1             509    1818  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0             189     224  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1              35     224  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0             174     198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1              24     198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          0             195     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          1              35     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          0             203     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          1              27     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           0             212     245  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           1              33     245  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             208     231  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              23     231  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             188     225  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              37     225  y_rate_wtkg      
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0             258     325  y_rate_wtkg      
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              67     325  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA                          0             358     410  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA                          1              52     410  y_rate_wtkg      
6-9 months     ki1000109-EE               PAKISTAN                       0             173     301  y_rate_wtkg      
6-9 months     ki1000109-EE               PAKISTAN                       1             128     301  y_rate_wtkg      
6-9 months     ki1000109-ResPak           PAKISTAN                       0             106     143  y_rate_wtkg      
6-9 months     ki1000109-ResPak           PAKISTAN                       1              37     143  y_rate_wtkg      
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0             832    1138  y_rate_wtkg      
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1             306    1138  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0             188     309  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1             121     309  y_rate_wtkg      
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0             420     498  y_rate_wtkg      
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     1              78     498  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0             514     576  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1              62     576  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0             599     693  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              94     693  y_rate_wtkg      
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1396    1496  y_rate_wtkg      
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             100    1496  y_rate_wtkg      
6-9 months     ki1101329-Keneba           GAMBIA                         0             817     905  y_rate_wtkg      
6-9 months     ki1101329-Keneba           GAMBIA                         1              88     905  y_rate_wtkg      
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0             158     214  y_rate_wtkg      
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1              56     214  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0             402     477  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1              75     477  y_rate_wtkg      
6-9 months     ki1114097-CMIN             BANGLADESH                     0             107     177  y_rate_wtkg      
6-9 months     ki1114097-CMIN             BANGLADESH                     1              70     177  y_rate_wtkg      
6-9 months     ki1114097-CONTENT          PERU                           0             196     214  y_rate_wtkg      
6-9 months     ki1114097-CONTENT          PERU                           1              18     214  y_rate_wtkg      
6-9 months     ki1119695-PROBIT           BELARUS                        0           12344   12437  y_rate_wtkg      
6-9 months     ki1119695-PROBIT           BELARUS                        1              93   12437  y_rate_wtkg      
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       0            4998    5570  y_rate_wtkg      
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1             572    5570  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          GUATEMALA                      0             695     824  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          GUATEMALA                      1             129     824  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          INDIA                          0            5287    5993  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          INDIA                          1             706    5993  y_rate_wtkg      
6-9 months     ki1148112-LCNI-5           MALAWI                         0             356     561  y_rate_wtkg      
6-9 months     ki1148112-LCNI-5           MALAWI                         1             205     561  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0            2252    3073  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1             821    3073  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0             188     225  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1              37     225  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0             171     194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1              23     194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          0             191     227  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          1              36     227  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          0             202     229  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          1              27     229  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           0             204     235  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           1              31     235  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             208     233  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              25     233  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             189     224  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              35     224  y_rate_wtkg      
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0             261     327  y_rate_wtkg      
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              66     327  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA                          0             352     403  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA                          1              51     403  y_rate_wtkg      
9-12 months    ki1000109-EE               PAKISTAN                       0             185     325  y_rate_wtkg      
9-12 months    ki1000109-EE               PAKISTAN                       1             140     325  y_rate_wtkg      
9-12 months    ki1000109-ResPak           PAKISTAN                       0             102     140  y_rate_wtkg      
9-12 months    ki1000109-ResPak           PAKISTAN                       1              38     140  y_rate_wtkg      
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0             827    1141  y_rate_wtkg      
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1             314    1141  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             181     298  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             117     298  y_rate_wtkg      
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0             405     481  y_rate_wtkg      
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     1              76     481  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0             509     569  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1              60     569  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0             589     683  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              94     683  y_rate_wtkg      
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1015    1083  y_rate_wtkg      
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              68    1083  y_rate_wtkg      
9-12 months    ki1101329-Keneba           GAMBIA                         0             802     883  y_rate_wtkg      
9-12 months    ki1101329-Keneba           GAMBIA                         1              81     883  y_rate_wtkg      
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0             136     186  y_rate_wtkg      
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1              50     186  y_rate_wtkg      
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   0             876    1120  y_rate_wtkg      
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   1             244    1120  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0             379     454  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1              75     454  y_rate_wtkg      
9-12 months    ki1114097-CMIN             BANGLADESH                     0              96     160  y_rate_wtkg      
9-12 months    ki1114097-CMIN             BANGLADESH                     1              64     160  y_rate_wtkg      
9-12 months    ki1114097-CONTENT          PERU                           0             194     212  y_rate_wtkg      
9-12 months    ki1114097-CONTENT          PERU                           1              18     212  y_rate_wtkg      
9-12 months    ki1119695-PROBIT           BELARUS                        0           12591   12687  y_rate_wtkg      
9-12 months    ki1119695-PROBIT           BELARUS                        1              96   12687  y_rate_wtkg      
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0            4512    5054  y_rate_wtkg      
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1             542    5054  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          GUATEMALA                      0             761     932  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          GUATEMALA                      1             171     932  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          INDIA                          0            4562    5173  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          INDIA                          1             611    5173  y_rate_wtkg      
9-12 months    ki1148112-LCNI-5           MALAWI                         0             232     383  y_rate_wtkg      
9-12 months    ki1148112-LCNI-5           MALAWI                         1             151     383  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0            2568    3518  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1             950    3518  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0             179     212  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1              33     212  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0             162     184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1              22     184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          0             190     226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          1              36     226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          0             203     230  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          1              27     230  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           0             195     224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           1              29     224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             203     228  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              25     228  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             191     226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              35     226  y_rate_wtkg      
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0             262     334  y_rate_wtkg      
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              72     334  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA                          0             343     392  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA                          1              49     392  y_rate_wtkg      
12-15 months   ki1000109-EE               PAKISTAN                       0             164     298  y_rate_wtkg      
12-15 months   ki1000109-EE               PAKISTAN                       1             134     298  y_rate_wtkg      
12-15 months   ki1000109-ResPak           PAKISTAN                       0              62      92  y_rate_wtkg      
12-15 months   ki1000109-ResPak           PAKISTAN                       1              30      92  y_rate_wtkg      
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0             851    1165  y_rate_wtkg      
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1             314    1165  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0             184     300  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1             116     300  y_rate_wtkg      
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0             387     461  y_rate_wtkg      
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     1              74     461  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0             485     537  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1              52     537  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0             571     666  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              95     666  y_rate_wtkg      
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             740     791  y_rate_wtkg      
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              51     791  y_rate_wtkg      
12-15 months   ki1101329-Keneba           GAMBIA                         0            1219    1340  y_rate_wtkg      
12-15 months   ki1101329-Keneba           GAMBIA                         1             121    1340  y_rate_wtkg      
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      0              71      96  y_rate_wtkg      
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1              25      96  y_rate_wtkg      
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0             776     982  y_rate_wtkg      
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1             206     982  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0             373     452  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1              79     452  y_rate_wtkg      
12-15 months   ki1114097-CMIN             BANGLADESH                     0              94     159  y_rate_wtkg      
12-15 months   ki1114097-CMIN             BANGLADESH                     1              65     159  y_rate_wtkg      
12-15 months   ki1114097-CONTENT          PERU                           0             181     199  y_rate_wtkg      
12-15 months   ki1114097-CONTENT          PERU                           1              18     199  y_rate_wtkg      
12-15 months   ki1119695-PROBIT           BELARUS                        0             998    1001  y_rate_wtkg      
12-15 months   ki1119695-PROBIT           BELARUS                        1               3    1001  y_rate_wtkg      
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            1615    1858  y_rate_wtkg      
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             243    1858  y_rate_wtkg      
12-15 months   ki1135781-COHORTS          GUATEMALA                      0             690     891  y_rate_wtkg      
12-15 months   ki1135781-COHORTS          GUATEMALA                      1             201     891  y_rate_wtkg      
12-15 months   ki1148112-LCNI-5           MALAWI                         0              72     126  y_rate_wtkg      
12-15 months   ki1148112-LCNI-5           MALAWI                         1              54     126  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0            2558    3551  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1             993    3551  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0             179     212  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1              33     212  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0             157     175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1              18     175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          0             190     226  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          1              36     226  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          0             200     227  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          1              27     227  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           0             185     214  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           1              29     214  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             202     225  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              23     225  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             185     220  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              35     220  y_rate_wtkg      
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0             253     325  y_rate_wtkg      
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              72     325  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA                          0             337     383  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA                          1              46     383  y_rate_wtkg      
15-18 months   ki1000109-EE               PAKISTAN                       0             159     277  y_rate_wtkg      
15-18 months   ki1000109-EE               PAKISTAN                       1             118     277  y_rate_wtkg      
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0             854    1171  y_rate_wtkg      
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1             317    1171  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0             177     290  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1             113     290  y_rate_wtkg      
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0             372     449  y_rate_wtkg      
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     1              77     449  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0             483     533  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1              50     533  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0             518     605  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              87     605  y_rate_wtkg      
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             620     664  y_rate_wtkg      
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              44     664  y_rate_wtkg      
15-18 months   ki1101329-Keneba           GAMBIA                         0            1243    1362  y_rate_wtkg      
15-18 months   ki1101329-Keneba           GAMBIA                         1             119    1362  y_rate_wtkg      
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0             835    1053  y_rate_wtkg      
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1             218    1053  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0             396     477  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1              81     477  y_rate_wtkg      
15-18 months   ki1114097-CMIN             BANGLADESH                     0              97     163  y_rate_wtkg      
15-18 months   ki1114097-CMIN             BANGLADESH                     1              66     163  y_rate_wtkg      
15-18 months   ki1114097-CONTENT          PERU                           0             172     189  y_rate_wtkg      
15-18 months   ki1114097-CONTENT          PERU                           1              17     189  y_rate_wtkg      
15-18 months   ki1119695-PROBIT           BELARUS                        0             277     279  y_rate_wtkg      
15-18 months   ki1119695-PROBIT           BELARUS                        1               2     279  y_rate_wtkg      
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            1010    1198  y_rate_wtkg      
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             188    1198  y_rate_wtkg      
15-18 months   ki1135781-COHORTS          GUATEMALA                      0             624     799  y_rate_wtkg      
15-18 months   ki1135781-COHORTS          GUATEMALA                      1             175     799  y_rate_wtkg      
15-18 months   ki1148112-LCNI-5           MALAWI                         0              71     119  y_rate_wtkg      
15-18 months   ki1148112-LCNI-5           MALAWI                         1              48     119  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0            2516    3510  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1             994    3510  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0             176     209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1              33     209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0             149     167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1              18     167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          0             190     226  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          1              36     226  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          0             200     227  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          1              27     227  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           0             177     202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           1              25     202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             209     233  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              24     233  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             176     208  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              32     208  y_rate_wtkg      
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0             242     310  y_rate_wtkg      
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              68     310  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA                          0             332     380  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA                          1              48     380  y_rate_wtkg      
18-21 months   ki1000109-EE               PAKISTAN                       0             159     255  y_rate_wtkg      
18-21 months   ki1000109-EE               PAKISTAN                       1              96     255  y_rate_wtkg      
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0             350     422  y_rate_wtkg      
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     1              72     422  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0             488     542  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1              54     542  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0             472     547  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              75     547  y_rate_wtkg      
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              11      11  y_rate_wtkg      
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      11  y_rate_wtkg      
18-21 months   ki1101329-Keneba           GAMBIA                         0            1218    1349  y_rate_wtkg      
18-21 months   ki1101329-Keneba           GAMBIA                         1             131    1349  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0             372     447  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1              75     447  y_rate_wtkg      
18-21 months   ki1114097-CMIN             BANGLADESH                     0             100     165  y_rate_wtkg      
18-21 months   ki1114097-CMIN             BANGLADESH                     1              65     165  y_rate_wtkg      
18-21 months   ki1114097-CONTENT          PERU                           0             168     183  y_rate_wtkg      
18-21 months   ki1114097-CONTENT          PERU                           1              15     183  y_rate_wtkg      
18-21 months   ki1119695-PROBIT           BELARUS                        0             212     215  y_rate_wtkg      
18-21 months   ki1119695-PROBIT           BELARUS                        1               3     215  y_rate_wtkg      
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       0             533     657  y_rate_wtkg      
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             124     657  y_rate_wtkg      
18-21 months   ki1135781-COHORTS          GUATEMALA                      0             614     795  y_rate_wtkg      
18-21 months   ki1135781-COHORTS          GUATEMALA                      1             181     795  y_rate_wtkg      
18-21 months   ki1148112-LCNI-5           MALAWI                         0             296     455  y_rate_wtkg      
18-21 months   ki1148112-LCNI-5           MALAWI                         1             159     455  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0             175     207  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1              32     207  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0             146     165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1              19     165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          0             190     226  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          1              36     226  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          0             200     227  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          1              27     227  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           0             165     189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           1              24     189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             211     235  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              24     235  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             175     206  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              31     206  y_rate_wtkg      
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0             245     311  y_rate_wtkg      
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              66     311  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA                          0             340     389  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA                          1              49     389  y_rate_wtkg      
21-24 months   ki1000109-EE               PAKISTAN                       0              65     106  y_rate_wtkg      
21-24 months   ki1000109-EE               PAKISTAN                       1              41     106  y_rate_wtkg      
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0             342     411  y_rate_wtkg      
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     1              69     411  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0             435     485  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1              50     485  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0             425     493  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              68     493  y_rate_wtkg      
21-24 months   ki1101329-Keneba           GAMBIA                         0            1093    1208  y_rate_wtkg      
21-24 months   ki1101329-Keneba           GAMBIA                         1             115    1208  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0             287     343  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1              56     343  y_rate_wtkg      
21-24 months   ki1114097-CMIN             BANGLADESH                     0              78     133  y_rate_wtkg      
21-24 months   ki1114097-CMIN             BANGLADESH                     1              55     133  y_rate_wtkg      
21-24 months   ki1114097-CONTENT          PERU                           0              33      38  y_rate_wtkg      
21-24 months   ki1114097-CONTENT          PERU                           1               5      38  y_rate_wtkg      
21-24 months   ki1119695-PROBIT           BELARUS                        0             208     210  y_rate_wtkg      
21-24 months   ki1119695-PROBIT           BELARUS                        1               2     210  y_rate_wtkg      
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0             236     303  y_rate_wtkg      
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              67     303  y_rate_wtkg      
21-24 months   ki1135781-COHORTS          GUATEMALA                      0             656     876  y_rate_wtkg      
21-24 months   ki1135781-COHORTS          GUATEMALA                      1             220     876  y_rate_wtkg      
21-24 months   ki1148112-LCNI-5           MALAWI                         0             246     387  y_rate_wtkg      
21-24 months   ki1148112-LCNI-5           MALAWI                         1             141     387  y_rate_wtkg      


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18-21 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

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




# Results Detail

## Results Plots
![](/tmp/af6aa8c5-3ee4-4b44-ac29-c304f5c81007/99511d42-3311-4285-aaeb-46bd83e06333/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/af6aa8c5-3ee4-4b44-ac29-c304f5c81007/99511d42-3311-4285-aaeb-46bd83e06333/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/af6aa8c5-3ee4-4b44-ac29-c304f5c81007/99511d42-3311-4285-aaeb-46bd83e06333/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.8894870   0.8650556   0.9139184
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.8152658   0.7522596   0.8782720
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                1.0705331   1.0332496   1.1078166
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.9926578   0.9077354   1.0775802
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                0.7637807   0.7395718   0.7879896
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                0.7448166   0.6886943   0.8009390
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                0.9685771   0.9407908   0.9963634
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                0.8760260   0.7672380   0.9848141
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                0.9750821   0.9475286   1.0026357
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                0.9239676   0.8692028   0.9787324
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.9291335   0.9015658   0.9567012
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.0356568   0.9471786   1.1241351
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8921806   0.8587401   0.9256210
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8411755   0.7699217   0.9124294
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7612315   0.7345831   0.7878799
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6906600   0.6415803   0.7397397
0-3 months     ki1000108-IRC              INDIA                          0                    NA                0.7727448   0.7518456   0.7936440
0-3 months     ki1000108-IRC              INDIA                          1                    NA                0.7459053   0.6942830   0.7975276
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                0.7255139   0.6944092   0.7566185
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                0.6486217   0.6157168   0.6815266
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                0.7983322   0.7351777   0.8614867
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                0.8212271   0.7304357   0.9120184
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.8045153   0.7824160   0.8266145
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.7557590   0.7270491   0.7844689
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.8181824   0.8008460   0.8355187
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.8114950   0.7591745   0.8638154
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.9056876   0.8900925   0.9212827
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8672718   0.8216685   0.9128752
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.8942313   0.8787653   0.9096974
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.8203677   0.7811573   0.8595781
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9294168   0.9189324   0.9399011
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8177108   0.7812009   0.8542206
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                0.9310772   0.9196277   0.9425267
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                0.8876193   0.8458972   0.9293413
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.8273738   0.8083357   0.8464119
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8253375   0.7879331   0.8627420
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    NA                0.8540180   0.7688703   0.9391657
0-3 months     ki1114097-CMIN             BANGLADESH                     1                    NA                0.8311514   0.7187925   0.9435103
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                0.8360549   0.8252315   0.8468782
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                0.7767170   0.7675733   0.7858607
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.9530682   0.9476638   0.9584726
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.9201291   0.9042469   0.9360113
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                0.8120589   0.7945091   0.8296087
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                0.6656879   0.6149734   0.7164025
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                0.8193733   0.8144959   0.8242507
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                0.7381993   0.7253957   0.7510030
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.8726967   0.8692923   0.8761010
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.8261008   0.8213935   0.8308082
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.7410230   0.7241457   0.7579003
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.7355264   0.7136111   0.7574417
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4778860   0.4595202   0.4962519
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.4657164   0.4189731   0.5124598
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.5845198   0.5513893   0.6176503
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.5542263   0.4626989   0.6457538
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                0.4397249   0.4207448   0.4587049
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                0.4769496   0.4314912   0.5224081
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                0.5121045   0.4921123   0.5320968
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                0.5824599   0.4966181   0.6683017
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                0.4977555   0.4770546   0.5184564
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                0.5056346   0.4581132   0.5531559
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.4609385   0.4353890   0.4864879
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.4877549   0.3549569   0.6205530
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4566549   0.4298774   0.4834324
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4488837   0.3931371   0.5046303
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.4785129   0.4563818   0.5006440
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.4564218   0.4191293   0.4937144
3-6 months     ki1000108-IRC              INDIA                          0                    NA                0.4712981   0.4527329   0.4898633
3-6 months     ki1000108-IRC              INDIA                          1                    NA                0.4343949   0.3793485   0.4894412
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                0.4757239   0.4491994   0.5022484
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                0.4733931   0.4461866   0.5005995
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                0.4656623   0.4343144   0.4970101
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                0.5248676   0.4654459   0.5842892
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.4510872   0.4380739   0.4641004
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4487716   0.4274823   0.4700609
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.4635867   0.4463708   0.4808026
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4466997   0.3895138   0.5038857
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.4867170   0.4730151   0.5004189
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5057532   0.4613139   0.5501925
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.4976214   0.4861200   0.5091228
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.5067689   0.4716551   0.5418828
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4159604   0.4070862   0.4248346
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4714012   0.4327823   0.5100201
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                0.4457649   0.4358896   0.4556403
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                0.4639677   0.4336088   0.4943266
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4965041   0.4812072   0.5118011
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4872181   0.4551235   0.5193127
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                0.4293984   0.3995641   0.4592326
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                0.4707849   0.4344946   0.5070751
3-6 months     ki1114097-CONTENT          PERU                           0                    NA                0.5834171   0.5613978   0.6054363
3-6 months     ki1114097-CONTENT          PERU                           1                    NA                0.6441217   0.5507504   0.7374929
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                0.6655413   0.6572895   0.6737930
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                0.6868165   0.6725013   0.7011317
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.4759817   0.4712278   0.4807355
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4993307   0.4847383   0.5139232
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                0.4622012   0.4506185   0.4737840
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                0.4505571   0.4193614   0.4817529
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                0.4849384   0.4808808   0.4889959
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                0.4672738   0.4561287   0.4784189
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.4376540   0.4341208   0.4411872
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4498772   0.4451350   0.4546195
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.4369575   0.4261313   0.4477838
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4440188   0.4292639   0.4587737
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.2456343   0.2293431   0.2619254
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.2349485   0.2040789   0.2658181
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.3770058   0.3505965   0.4034150
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.4365109   0.3378177   0.5352040
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    NA                0.2309580   0.2146203   0.2472958
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    NA                0.2377778   0.2001063   0.2754494
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                0.2706927   0.2557015   0.2856838
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                0.2684760   0.2156266   0.3213255
6-9 months     ki0047075b-MAL-ED          PERU                           0                    NA                0.2576011   0.2410242   0.2741779
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                0.2954635   0.2523868   0.3385402
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.2554646   0.2331708   0.2777585
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2873828   0.2195093   0.3552562
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2341233   0.2071563   0.2610902
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2287351   0.1685180   0.2889521
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2597843   0.2410776   0.2784910
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2593764   0.2229397   0.2958130
6-9 months     ki1000108-IRC              INDIA                          0                    NA                0.2604224   0.2458242   0.2750206
6-9 months     ki1000108-IRC              INDIA                          1                    NA                0.2826436   0.2400471   0.3252400
6-9 months     ki1000109-EE               PAKISTAN                       0                    NA                0.2447166   0.2260427   0.2633905
6-9 months     ki1000109-EE               PAKISTAN                       1                    NA                0.2664922   0.2419409   0.2910435
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    NA                0.1979354   0.1693461   0.2265247
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    NA                0.2581528   0.2062787   0.3100269
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2052209   0.1897253   0.2207164
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2217569   0.2011858   0.2423280
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1861294   0.1653611   0.2068977
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2213320   0.1949831   0.2476808
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2310368   0.2160395   0.2460341
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2670212   0.2322709   0.3017715
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2484837   0.2356379   0.2613295
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2553798   0.2192713   0.2914882
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2690971   0.2574923   0.2807018
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2580620   0.2323595   0.2837646
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2581113   0.2490671   0.2671555
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2291649   0.1837527   0.2745772
6-9 months     ki1101329-Keneba           GAMBIA                         0                    NA                0.2065765   0.1937328   0.2194202
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                0.1773801   0.1387365   0.2160237
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.2345476   0.2164367   0.2526584
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.2713000   0.2255582   0.3170417
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1812214   0.1697837   0.1926591
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2058853   0.1603795   0.2513910
6-9 months     ki1114097-CMIN             BANGLADESH                     0                    NA                0.2123617   0.1857789   0.2389444
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    NA                0.2438526   0.2119276   0.2757776
6-9 months     ki1114097-CONTENT          PERU                           0                    NA                0.3194429   0.2987703   0.3401155
6-9 months     ki1114097-CONTENT          PERU                           1                    NA                0.3049285   0.2355374   0.3743196
6-9 months     ki1119695-PROBIT           BELARUS                        0                    NA                0.4734658   0.4645219   0.4824097
6-9 months     ki1119695-PROBIT           BELARUS                        1                    NA                0.4813166   0.4688425   0.4937908
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2582884   0.2535055   0.2630712
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2580464   0.2447190   0.2713738
6-9 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2127750   0.2025770   0.2229730
6-9 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2177663   0.1856454   0.2498871
6-9 months     ki1135781-COHORTS          INDIA                          0                    NA                0.2828895   0.2786989   0.2870801
6-9 months     ki1135781-COHORTS          INDIA                          1                    NA                0.2649924   0.2535239   0.2764609
6-9 months     ki1148112-LCNI-5           MALAWI                         0                    NA                0.2921690   0.2762444   0.3080937
6-9 months     ki1148112-LCNI-5           MALAWI                         1                    NA                0.2701367   0.2499037   0.2903697
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2406635   0.2345471   0.2467799
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2372436   0.2276603   0.2468268
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1753007   0.1607411   0.1898602
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1708620   0.1331531   0.2085709
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.2831737   0.2488362   0.3175112
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.2689139   0.1797277   0.3581002
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.1758633   0.1601705   0.1915562
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.1957343   0.1617398   0.2297288
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1868680   0.1712332   0.2025027
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                0.1965339   0.1555375   0.2375303
9-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.1909153   0.1738711   0.2079596
9-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.1826499   0.1531060   0.2121938
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.2144737   0.1911610   0.2377864
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2044812   0.1408287   0.2681337
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1627876   0.1399444   0.1856308
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1980060   0.1582492   0.2377629
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2076344   0.1886713   0.2265975
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2385722   0.1960789   0.2810654
9-12 months    ki1000108-IRC              INDIA                          0                    NA                0.2169563   0.2018684   0.2320442
9-12 months    ki1000108-IRC              INDIA                          1                    NA                0.1916950   0.1471833   0.2362067
9-12 months    ki1000109-EE               PAKISTAN                       0                    NA                0.2506978   0.2280642   0.2733314
9-12 months    ki1000109-EE               PAKISTAN                       1                    NA                0.2446368   0.2194919   0.2697816
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.1014340   0.0664708   0.1363972
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.0828979   0.0399804   0.1258155
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1943767   0.1860339   0.2027195
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1922102   0.1733396   0.2110807
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1252942   0.1008221   0.1497663
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1608512   0.1307101   0.1909923
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1652046   0.1505740   0.1798352
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1550742   0.1253620   0.1847863
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1806628   0.1709075   0.1904181
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1464202   0.1129388   0.1799016
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1972469   0.1857271   0.2087667
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2042204   0.1818227   0.2266181
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2071745   0.1966045   0.2177445
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1849505   0.1472136   0.2226874
9-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.1595205   0.1475489   0.1714920
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1377879   0.0866608   0.1889151
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.2072287   0.1855424   0.2289149
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.2112938   0.1605446   0.2620430
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.2351934   0.2200288   0.2503579
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2684848   0.2406181   0.2963515
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1429189   0.1296063   0.1562314
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1411097   0.0975412   0.1846781
9-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.1695309   0.1417433   0.1973185
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.1607333   0.1216094   0.1998573
9-12 months    ki1114097-CONTENT          PERU                           0                    NA                0.2216989   0.2028468   0.2405509
9-12 months    ki1114097-CONTENT          PERU                           1                    NA                0.2495515   0.1813903   0.3177128
9-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.3666050   0.3518040   0.3814060
9-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.3714381   0.3581487   0.3847275
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1800183   0.1752236   0.1848129
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1819387   0.1682536   0.1956238
9-12 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1587509   0.1495329   0.1679689
9-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1461715   0.1236804   0.1686626
9-12 months    ki1135781-COHORTS          INDIA                          0                    NA                0.2195748   0.2152382   0.2239113
9-12 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2183040   0.2061703   0.2304377
9-12 months    ki1148112-LCNI-5           MALAWI                         0                    NA                0.2024361   0.1824682   0.2224040
9-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.2014321   0.1746916   0.2281725
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1547775   0.1497270   0.1598279
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1540987   0.1468935   0.1613039
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1346444   0.1169396   0.1523492
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1346829   0.0971462   0.1722197
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.2015537   0.1764840   0.2266233
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.2618594   0.1593624   0.3643565
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.1744124   0.1568585   0.1919663
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.1773693   0.1401952   0.2145434
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1549553   0.1373992   0.1725114
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.1251974   0.0668752   0.1835195
12-15 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.1407850   0.1227619   0.1588081
12-15 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.1521882   0.1056465   0.1987299
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1859791   0.1593939   0.2125644
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2229651   0.1301613   0.3157688
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1662957   0.1391602   0.1934312
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1201215   0.0587479   0.1814951
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1471450   0.1319347   0.1623553
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1540358   0.1228742   0.1851974
12-15 months   ki1000108-IRC              INDIA                          0                    NA                0.1841438   0.1703479   0.1979397
12-15 months   ki1000108-IRC              INDIA                          1                    NA                0.1728191   0.1329460   0.2126921
12-15 months   ki1000109-EE               PAKISTAN                       0                    NA                0.1376643   0.1137865   0.1615421
12-15 months   ki1000109-EE               PAKISTAN                       1                    NA                0.1326186   0.1054387   0.1597984
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.1522456   0.0889562   0.2155351
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    NA                0.1213563   0.0680975   0.1746151
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1928475   0.1838249   0.2018702
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1666006   0.1485557   0.1846454
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1818977   0.1594096   0.2043857
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1706265   0.1488120   0.1924409
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1284439   0.1155658   0.1413221
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1477712   0.1127346   0.1828077
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1823317   0.1701029   0.1945605
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1579315   0.1150249   0.2008381
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1684188   0.1569470   0.1798906
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1413450   0.1135809   0.1691090
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1748762   0.1630787   0.1866736
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1427971   0.1027674   0.1828269
12-15 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.1825254   0.1724053   0.1926455
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2139256   0.1752176   0.2526336
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.1848646   0.1509051   0.2188240
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.1956949   0.1534468   0.2379430
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.1915976   0.1770416   0.2061536
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1974160   0.1664018   0.2284302
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1712861   0.1567230   0.1858492
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1741249   0.1432345   0.2050152
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.1632302   0.1376920   0.1887684
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.1912223   0.1589683   0.2234762
12-15 months   ki1114097-CONTENT          PERU                           0                    NA                0.1834931   0.1635628   0.2034234
12-15 months   ki1114097-CONTENT          PERU                           1                    NA                0.1565646   0.1029001   0.2102292
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1490382   0.1404834   0.1575931
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1557073   0.1339012   0.1775134
12-15 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1522788   0.1417616   0.1627960
12-15 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1430426   0.1240909   0.1619944
12-15 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.1473792   0.1016995   0.1930588
12-15 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1410972   0.0917103   0.1904841
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1319433   0.1269875   0.1368991
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1270944   0.1197457   0.1344431
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1442571   0.1273022   0.1612119
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1358346   0.0927557   0.1789136
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.1980319   0.1690536   0.2270102
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.2319240   0.1666460   0.2972021
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.1654952   0.1494734   0.1815169
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.1465125   0.1054668   0.1875582
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1754080   0.1591629   0.1916532
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.1655259   0.1031520   0.2278999
15-18 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.1478581   0.1270112   0.1687050
15-18 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.1359827   0.0914437   0.1805217
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.2202460   0.1916328   0.2488592
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2428274   0.1145250   0.3711298
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1394196   0.1143038   0.1645354
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1599336   0.1045638   0.2153034
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1564653   0.1390327   0.1738979
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1328683   0.1047243   0.1610123
15-18 months   ki1000108-IRC              INDIA                          0                    NA                0.1554732   0.1409349   0.1700114
15-18 months   ki1000108-IRC              INDIA                          1                    NA                0.1967912   0.1564760   0.2371064
15-18 months   ki1000109-EE               PAKISTAN                       0                    NA                0.0912359   0.0726146   0.1098572
15-18 months   ki1000109-EE               PAKISTAN                       1                    NA                0.0860028   0.0633519   0.1086536
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1693478   0.1541612   0.1845345
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2005239   0.1756919   0.2253559
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1660895   0.1459123   0.1862668
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1619779   0.1360098   0.1879460
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1614173   0.1449601   0.1778745
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1090877   0.0793878   0.1387876
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1537935   0.1413895   0.1661975
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1789198   0.1396390   0.2182005
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1639853   0.1523294   0.1756412
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1443358   0.1191636   0.1695081
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1725976   0.1577520   0.1874431
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1360465   0.0860789   0.1860142
15-18 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.1606025   0.1504062   0.1707988
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1356270   0.0956934   0.1755605
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.1766581   0.1644488   0.1888675
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1669410   0.1427060   0.1911760
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2355878   0.2186335   0.2525421
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2340742   0.1987206   0.2694277
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.1252301   0.0935347   0.1569255
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.1481619   0.1156009   0.1807229
15-18 months   ki1114097-CONTENT          PERU                           0                    NA                0.1790206   0.1595911   0.1984502
15-18 months   ki1114097-CONTENT          PERU                           1                    NA                0.0938882   0.0469544   0.1408219
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1347105   0.1231310   0.1462900
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1261885   0.0993076   0.1530693
15-18 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1395486   0.1271117   0.1519854
15-18 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1450790   0.1207519   0.1694061
15-18 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.1680444   0.1212158   0.2148730
15-18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1795348   0.1374659   0.2216037
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1622021   0.1567230   0.1676812
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1522134   0.1439013   0.1605256
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1393293   0.1203916   0.1582670
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1637088   0.1235845   0.2038331
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.1635512   0.1377982   0.1893042
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.1446745   0.0386787   0.2506702
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.1707853   0.1545826   0.1869880
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.1831217   0.1415917   0.2246518
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1458697   0.1266824   0.1650570
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.1377378   0.0937125   0.1817631
18-21 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.1641049   0.1440714   0.1841384
18-21 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.1399428   0.0856788   0.1942069
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1785844   0.1524646   0.2047042
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1698641   0.0417769   0.2979514
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1519479   0.1254151   0.1784807
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1323306   0.0617016   0.2029595
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1393672   0.1203814   0.1583530
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1174882   0.0942134   0.1407629
18-21 months   ki1000108-IRC              INDIA                          0                    NA                0.1596668   0.1456459   0.1736878
18-21 months   ki1000108-IRC              INDIA                          1                    NA                0.1523207   0.1070828   0.1975587
18-21 months   ki1000109-EE               PAKISTAN                       0                    NA                0.1381148   0.1171876   0.1590421
18-21 months   ki1000109-EE               PAKISTAN                       1                    NA                0.1073927   0.0832667   0.1315187
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1747510   0.1565088   0.1929933
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1651226   0.1302477   0.1999976
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1299643   0.1177018   0.1422269
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1442443   0.1137429   0.1747458
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1436915   0.1321164   0.1552666
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1320694   0.1037955   0.1603433
18-21 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.1524527   0.1415787   0.1633266
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1625751   0.1217144   0.2034357
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1447976   0.1271637   0.1624316
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1254908   0.0929891   0.1579924
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.1550861   0.1203357   0.1898366
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.1717417   0.1412450   0.2022383
18-21 months   ki1114097-CONTENT          PERU                           0                    NA                0.1923363   0.1727558   0.2119168
18-21 months   ki1114097-CONTENT          PERU                           1                    NA                0.1937233   0.1083828   0.2790638
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1197117   0.0999057   0.1395177
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1230777   0.0919594   0.1541960
18-21 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1606172   0.1485186   0.1727159
18-21 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1715201   0.1490481   0.1939921
18-21 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.1818371   0.1563501   0.2073240
18-21 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1803743   0.1474427   0.2133059
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1582992   0.1417967   0.1748017
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1249426   0.0878529   0.1620323
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.1439417   0.1193034   0.1685800
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.1361565   0.0679543   0.2043588
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.1570000   0.1423431   0.1716569
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.1596292   0.1295632   0.1896952
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1651143   0.1450755   0.1851531
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.1885342   0.1035990   0.2734695
21-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.1744234   0.1549666   0.1938801
21-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.2507378   0.1696022   0.3318733
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1989011   0.1736330   0.2241693
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.0813854   0.0197227   0.1430481
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1412869   0.1110893   0.1714845
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1462774   0.0720729   0.2204820
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1448187   0.1286310   0.1610065
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1671654   0.1379352   0.1963955
21-24 months   ki1000108-IRC              INDIA                          0                    NA                0.1840079   0.1699182   0.1980977
21-24 months   ki1000108-IRC              INDIA                          1                    NA                0.1426180   0.0924548   0.1927812
21-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.1935183   0.1634474   0.2235892
21-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.1946772   0.1638784   0.2254760
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1369651   0.1205312   0.1533990
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1619656   0.1181416   0.2057897
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1453386   0.1330736   0.1576036
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1237008   0.0938369   0.1535647
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1718591   0.1583775   0.1853407
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1913049   0.1566583   0.2259515
21-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.1683424   0.1572139   0.1794709
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1563889   0.1237246   0.1890533
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1681658   0.1417382   0.1945934
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2187071   0.1535326   0.2838816
21-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.1742614   0.1451845   0.2033384
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.1559456   0.1150859   0.1968054
21-24 months   ki1114097-CONTENT          PERU                           0                    NA                0.1991196   0.1485425   0.2496968
21-24 months   ki1114097-CONTENT          PERU                           1                    NA                0.2460507   0.0840265   0.4080750
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1101001   0.0776562   0.1425440
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0996828   0.0419381   0.1574275
21-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1825674   0.1713221   0.1938127
21-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1880643   0.1673240   0.2088045
21-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.1949334   0.1592862   0.2305806
21-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1478578   0.1091712   0.1865443


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8787293   0.8556572   0.9018013
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.0647180   1.0304826   1.0989534
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.7594406   0.7372368   0.7816445
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.9569501   0.9301779   0.9837223
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.9700715   0.9450349   0.9951081
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9407758   0.9143190   0.9672326
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8846013   0.8543673   0.9148354
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7467559   0.7230662   0.7704455
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                0.7679906   0.7485485   0.7874326
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                0.6924705   0.6695203   0.7154208
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                0.8101825   0.7586697   0.8616953
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.7908355   0.7705160   0.8111550
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.8163500   0.7995330   0.8331670
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9224848   0.9123284   0.9326411
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.9273010   0.9161920   0.9384101
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8270122   0.8100415   0.8439828
0-3 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                0.8569936   0.7917724   0.9222149
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.8356582   0.8250657   0.8462507
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.9496947   0.9445678   0.9548217
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7980090   0.7812054   0.8148126
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.8098118   0.8052049   0.8144186
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.8576797   0.8546652   0.8606941
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.7391078   0.7253570   0.7528586
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4746501   0.4579760   0.4913241
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.5781976   0.5469697   0.6094254
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4452214   0.4276818   0.4627610
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.5217163   0.5015380   0.5418946
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.4982335   0.4792789   0.5171881
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.4655071   0.4396676   0.4913465
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4571297   0.4330666   0.4811928
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4751567   0.4562440   0.4940693
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                0.4660717   0.4485044   0.4836390
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                0.4741878   0.4551933   0.4931824
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                0.4801367   0.4523118   0.5079615
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4502075   0.4368094   0.4636057
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4593975   0.4422221   0.4765729
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4196086   0.4109417   0.4282755
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.4472204   0.4378499   0.4565908
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4976117   0.4838029   0.5114205
3-6 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                0.4485689   0.4253428   0.4717949
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                0.5883606   0.5672514   0.6094698
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.6657039   0.6577349   0.6736730
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4783450   0.4738196   0.4828705
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4605000   0.4496523   0.4713476
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.4829473   0.4791324   0.4867622
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4413738   0.4384031   0.4443445
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4391655   0.4303725   0.4479585
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2428552   0.2283339   0.2573765
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.3831499   0.3570859   0.4092138
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2318230   0.2168658   0.2467803
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2695733   0.2550952   0.2840514
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.2613933   0.2459015   0.2768851
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2593884   0.2383337   0.2804432
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2383604   0.2142762   0.2624446
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2595889   0.2435057   0.2756721
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                0.2626310   0.2487635   0.2764985
6-9 months     ki1000109-EE               PAKISTAN                       NA                   NA                0.2530633   0.2382291   0.2678975
6-9 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2144451   0.1896874   0.2392029
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2097690   0.1949147   0.2246234
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1982186   0.1818458   0.2145914
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2362596   0.2225288   0.2499904
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2565653   0.2476975   0.2654331
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.2033811   0.1911428   0.2156195
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.2458437   0.2280295   0.2636580
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1874500   0.1753777   0.1995223
6-9 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                0.2261421   0.2058904   0.2463939
6-9 months     ki1114097-CONTENT          PERU                           NA                   NA                0.3203724   0.3008854   0.3398595
6-9 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.4735581   0.4647679   0.4823484
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2583530   0.2538536   0.2628524
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2137898   0.2041068   0.2234728
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.2807303   0.2767918   0.2846687
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2843241   0.2718050   0.2968431
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2397565   0.2344749   0.2450382
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1730346   0.1593686   0.1867006
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2845923   0.2527896   0.3163950
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1788440   0.1647878   0.1929001
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1859920   0.1715885   0.2003955
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.1874806   0.1721694   0.2027919
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2146445   0.1925652   0.2367238
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1668888   0.1466505   0.1871271
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2123308   0.1948351   0.2298265
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                0.2132244   0.1989917   0.2274571
9-12 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.2471969   0.2305945   0.2637993
9-12 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.0960443   0.0675395   0.1245490
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1943224   0.1874198   0.2012249
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1410472   0.1219662   0.1601282
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1636213   0.1504841   0.1767585
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2052246   0.1951376   0.2153116
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1574096   0.1457735   0.1690458
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.2074564   0.1866255   0.2282874
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2429668   0.2299104   0.2560232
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1439907   0.1312935   0.1566879
9-12 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1656112   0.1427254   0.1884969
9-12 months    ki1114097-CONTENT          PERU                           NA                   NA                0.2242885   0.2061680   0.2424089
9-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.3667028   0.3522151   0.3811905
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1800773   0.1755475   0.1846071
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1561176   0.1475781   0.1646571
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2194426   0.2153609   0.2235243
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2017210   0.1858623   0.2175796
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1545451   0.1502955   0.1587946
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1353586   0.1195861   0.1511312
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2101946   0.1853699   0.2350192
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1739561   0.1580675   0.1898447
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1526939   0.1360899   0.1692979
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1417390   0.1250455   0.1584325
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1894245   0.1641813   0.2146678
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1594440   0.1347422   0.1841458
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1504668   0.1366572   0.1642764
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                0.1821426   0.1693469   0.1949383
12-15 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.1361781   0.1182651   0.1540911
12-15 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1440487   0.0977615   0.1903360
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1851225   0.1777268   0.1925183
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1752090   0.1590517   0.1913663
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1305063   0.1184818   0.1425307
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1742207   0.1629042   0.1855373
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1857051   0.1759013   0.1955089
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.1974757   0.1700956   0.2248557
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1929712   0.1819725   0.2039700
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1721075   0.1589812   0.1852337
12-15 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1724766   0.1525587   0.1923945
12-15 months   ki1114097-CONTENT          PERU                           NA                   NA                0.1810659   0.1624244   0.1997074
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1499254   0.1419751   0.1578757
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1507603   0.1416376   0.1598830
12-15 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1517832   0.1183392   0.1852272
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1304878   0.1263700   0.1346055
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1427882   0.1271818   0.1583946
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2034195   0.1767881   0.2300509
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1625746   0.1476285   0.1775207
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1734910   0.1577405   0.1892416
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1461889   0.1273267   0.1650511
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2236104   0.1952383   0.2519826
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1428022   0.1198308   0.1657736
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1521835   0.1380291   0.1663379
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                0.1604586   0.1468913   0.1740260
15-18 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.0889396   0.0746678   0.1032114
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1775870   0.1644275   0.1907466
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1648845   0.1491151   0.1806540
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1529843   0.1384423   0.1675263
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1702866   0.1560553   0.1845179
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1581639   0.1482830   0.1680449
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1748246   0.1641572   0.1854921
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2347736   0.2195239   0.2500233
15-18 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1334837   0.1109948   0.1559725
15-18 months   ki1114097-CONTENT          PERU                           NA                   NA                0.1713509   0.1529966   0.1897053
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1337260   0.1231139   0.1443380
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1402965   0.1292836   0.1513094
15-18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1766109   0.1448823   0.2083395
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1594949   0.1548064   0.1641834
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1427146   0.1257942   0.1596351
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1606491   0.1365241   0.1847741
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1726665   0.1577530   0.1875800
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1474997   0.1298460   0.1651535
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1615652   0.1425950   0.1805355
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1770799   0.1505223   0.2036374
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1463538   0.1214615   0.1712461
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1352327   0.1200477   0.1504178
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                0.1589791   0.1455977   0.1723606
18-21 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.1296202   0.1137821   0.1454583
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1724392   0.1563209   0.1885575
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1537127   0.1431511   0.1642744
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1423948   0.1268654   0.1579242
18-21 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1616853   0.1379134   0.1854572
18-21 months   ki1114097-CONTENT          PERU                           NA                   NA                0.1921232   0.1732877   0.2109588
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1209531   0.1039197   0.1379866
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1631376   0.1524898   0.1737853
18-21 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1810824   0.1610270   0.2011378
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1521155   0.1369898   0.1672413
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1434900   0.1201394   0.1668407
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1562703   0.1431057   0.1694349
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1690412   0.1491342   0.1889482
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1814671   0.1617319   0.2012023
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1876561   0.1639063   0.2114059
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1413187   0.1136523   0.1689851
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1484491   0.1344875   0.1624106
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1777340   0.1639174   0.1915507
21-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.1933736   0.1711433   0.2156039
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1419730   0.1267767   0.1571693
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1670967   0.1565736   0.1776198
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1768175   0.1523979   0.2012370
21-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1663610   0.1425615   0.1901605
21-24 months   ki1114097-CONTENT          PERU                           NA                   NA                0.2052948   0.1562051   0.2543845
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1090935   0.0811882   0.1369987
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1843420   0.1744411   0.1942429
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1792456   0.1525432   0.2059480


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0742211   -0.1417965   -0.0066457
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0778753   -0.1710240    0.0152734
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0189641   -0.0801562    0.0422281
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0925511   -0.2050315    0.0199294
0-3 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    0                 -0.0511145   -0.1124296    0.0102006
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.1065233    0.0138050    0.1992416
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0510050   -0.1298160    0.0278059
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0705715   -0.1265056   -0.0146373
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                 -0.0268395   -0.0823044    0.0286254
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.0768922   -0.1222381   -0.0315462
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.0228949   -0.0883838    0.1341736
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0487563   -0.0748597   -0.0226528
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.0066874   -0.0614175    0.0480427
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0384157   -0.0866279    0.0097964
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0738636   -0.1157063   -0.0320209
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1117060   -0.1495854   -0.0738266
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.0434579   -0.0864218   -0.0004940
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0020363   -0.0440750    0.0400025
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0228666   -0.1650982    0.1193650
0-3 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        1                    0                 -0.0593378   -0.0711587   -0.0475170
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0329391   -0.0496262   -0.0162519
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.1463710   -0.1999190   -0.0928230
0-3 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0811739   -0.0948579   -0.0674900
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0465958   -0.0519367   -0.0412549
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0054966   -0.0327938    0.0218006
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0121696   -0.0627446    0.0384054
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0302935   -0.1278439    0.0672569
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.0372248   -0.0121181    0.0865676
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0703554   -0.0177165    0.1584272
3-6 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.0078790   -0.0439772    0.0597353
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0268165   -0.1081896    0.1618226
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0077712   -0.0695738    0.0540314
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0220911   -0.0655340    0.0213519
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                 -0.0369032   -0.0949890    0.0211825
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.0023308   -0.0404818    0.0358201
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.0592053   -0.0081347    0.1265452
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0023156   -0.0208907    0.0162596
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.0168869   -0.0764483    0.0426744
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0190362   -0.0275815    0.0656540
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0091475   -0.0277724    0.0460674
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0554408    0.0157827    0.0950990
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                  0.0182027   -0.0137304    0.0501358
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0092860   -0.0447542    0.0261822
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    0                  0.0413865   -0.0053829    0.0881558
3-6 months     ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           1                    0                  0.0607046   -0.0351534    0.1565626
3-6 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.0212753    0.0034143    0.0391362
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0233491    0.0080094    0.0386888
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.0116441   -0.0449517    0.0216635
3-6 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0176646   -0.0294847   -0.0058445
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0122232    0.0066102    0.0178362
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0070613   -0.0110052    0.0251278
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0106858   -0.0453615    0.0239900
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.0595051   -0.0423904    0.1614006
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.0068198   -0.0342489    0.0478885
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0022166   -0.0571779    0.0527447
6-9 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.0378624   -0.0083772    0.0841020
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0319181   -0.0395221    0.1033583
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0053882   -0.0720790    0.0613026
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0004080   -0.0414513    0.0406354
6-9 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          1                    0                  0.0222212   -0.0228631    0.0673056
6-9 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE               PAKISTAN                       1                    0                  0.0217756   -0.0093723    0.0529235
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.0602174    0.0007488    0.1196859
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0165360   -0.0008297    0.0339016
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  0.0352026    0.0016965    0.0687087
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0359844   -0.0017902    0.0737590
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0068960   -0.0315210    0.0453131
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0110350   -0.0392863    0.0172163
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0289464   -0.0752895    0.0173967
6-9 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.0291964   -0.0698938    0.0115010
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  0.0367524   -0.0125692    0.0860739
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0246639   -0.0221974    0.0715251
6-9 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    0                  0.0314909   -0.0100412    0.0730231
6-9 months     ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT          PERU                           1                    0                 -0.0145144   -0.0871482    0.0581195
6-9 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.0078508   -0.0059580    0.0216597
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0002420   -0.0144098    0.0139259
6-9 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0049913   -0.0288437    0.0388262
6-9 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0178971   -0.0300983   -0.0056959
6-9 months     ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         1                    0                 -0.0220324   -0.0478772    0.0038124
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0034199   -0.0145849    0.0077451
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0044386   -0.0447261    0.0358488
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0142597   -0.1105061    0.0819867
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.0198710   -0.0177083    0.0574502
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0096659   -0.0342951    0.0536270
9-12 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           1                    0                 -0.0082655   -0.0424080    0.0258771
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0099925   -0.0776729    0.0576880
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0352184   -0.0106256    0.0810625
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0309377   -0.0157922    0.0776677
9-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          1                    0                 -0.0252613   -0.0723095    0.0217869
9-12 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE               PAKISTAN                       1                    0                 -0.0060611   -0.0398723    0.0277502
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.0185361   -0.0736986    0.0366264
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0021665   -0.0236786    0.0193456
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  0.0355570   -0.0034301    0.0745442
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.0101304   -0.0432539    0.0229930
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0342426   -0.0691069    0.0006218
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0069735   -0.0181186    0.0320657
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0222240   -0.0614838    0.0170358
9-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.0217326   -0.0742360    0.0307709
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  0.0040651   -0.0512267    0.0593570
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                  0.0332914    0.0013903    0.0651925
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0018092   -0.0473754    0.0437569
9-12 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0087976   -0.0563322    0.0387370
9-12 months    ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT          PERU                           1                    0                  0.0278527   -0.0428617    0.0985670
9-12 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS                        1                    0                  0.0048332   -0.0131369    0.0228033
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0019204   -0.0125827    0.0164235
9-12 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.0125794   -0.0368395    0.0116807
9-12 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.0012707   -0.0141538    0.0116123
9-12 months    ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         1                    0                 -0.0010040   -0.0344425    0.0324344
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0006788   -0.0092725    0.0079149
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0000386   -0.0416080    0.0416851
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.0603057   -0.0453916    0.1660031
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.0029570   -0.0383016    0.0442156
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0297579   -0.0909581    0.0314422
12-15 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.0114032   -0.0385936    0.0614001
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0369859   -0.0596482    0.1336200
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0461742   -0.1132979    0.0209495
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0068908   -0.0278579    0.0416395
12-15 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          1                    0                 -0.0113247   -0.0535016    0.0308521
12-15 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0050457   -0.0411687    0.0310773
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    0                 -0.0308894   -0.1135485    0.0517698
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0262470   -0.0478979   -0.0045960
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.0112712   -0.0427125    0.0201701
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0193272   -0.0179353    0.0565898
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0244002   -0.0690938    0.0202935
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0270738   -0.0571801    0.0030325
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0320791   -0.0738711    0.0097130
12-15 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         1                    0                  0.0314002   -0.0086275    0.0714280
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  0.0108303   -0.0441130    0.0657737
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                  0.0058184   -0.0321223    0.0437592
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0028388   -0.0313616    0.0370391
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    0                  0.0279921   -0.0133169    0.0693010
12-15 months   ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT          PERU                           1                    0                 -0.0269284   -0.0841530    0.0302961
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0066691   -0.0167752    0.0301133
12-15 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.0092361   -0.0310139    0.0125417
12-15 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5           MALAWI                         1                    0                 -0.0062820   -0.0743847    0.0618207
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0048489   -0.0137447    0.0040469
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0084224   -0.0546575    0.0378126
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.0338921   -0.0377761    0.1055604
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0189827   -0.0629604    0.0249951
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0098821   -0.0742458    0.0544816
15-18 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           1                    0                 -0.0118754   -0.0604875    0.0367367
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0225814   -0.1088357    0.1539985
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0205140   -0.0405689    0.0815969
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0235970   -0.0568127    0.0096186
15-18 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          1                    0                  0.0413180   -0.0014674    0.0841035
15-18 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0052331   -0.0346556    0.0241893
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0311761    0.0035858    0.0587665
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.0041116   -0.0371960    0.0289728
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.0523296   -0.0863992   -0.0182600
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0251263   -0.0160333    0.0662859
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0196495   -0.0474565    0.0081575
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0365510   -0.0886813    0.0155792
15-18 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0249755   -0.0661725    0.0162214
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 -0.0097171   -0.0370133    0.0175791
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0015136   -0.0408094    0.0377821
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    0                  0.0229318   -0.0226649    0.0685285
15-18 months   ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT          PERU                           1                    0                 -0.0851325   -0.1360322   -0.0342327
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0085221   -0.0378637    0.0208196
15-18 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0055305   -0.0217493    0.0328103
15-18 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5           MALAWI                         1                    0                  0.0114904   -0.0516656    0.0746464
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0099886   -0.0196837   -0.0002936
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0243795   -0.0200962    0.0688551
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0188767   -0.1279836    0.0902301
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.0123364   -0.0323441    0.0570170
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0081319   -0.0566652    0.0404014
18-21 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           1                    0                 -0.0241621   -0.0821987    0.0338745
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0087202   -0.1396847    0.1222442
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0196173   -0.0951363    0.0559017
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0218790   -0.0520524    0.0082944
18-21 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          1                    0                 -0.0073461   -0.0546865    0.0399943
18-21 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0307222   -0.0628142    0.0013699
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.0096284   -0.0489981    0.0297413
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0142800   -0.0186859    0.0472459
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0116221   -0.0421241    0.0188799
18-21 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         1                    0                  0.0101224   -0.0321366    0.0523815
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0193069   -0.0565372    0.0179235
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    0                  0.0166555   -0.0298784    0.0631895
18-21 months   ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CONTENT          PERU                           1                    0                  0.0013870   -0.0861627    0.0889367
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0033660   -0.0336155    0.0403474
18-21 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0109029   -0.0146241    0.0364298
18-21 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         1                    0                 -0.0014628   -0.0432361    0.0403105
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0333566   -0.0740135    0.0073002
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0077852   -0.0805600    0.0649896
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.0026292   -0.0308242    0.0360825
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0234199   -0.0639915    0.1108313
21-24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.0763144   -0.0071166    0.1597453
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.1175157   -0.1844034   -0.0506280
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0049905   -0.0751869    0.0851679
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0223466   -0.0110626    0.0557558
21-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0413900   -0.0935609    0.0107809
21-24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000109-EE               PAKISTAN                       1                    0                  0.0011589   -0.0420423    0.0443601
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0250006   -0.0217597    0.0717609
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0216378   -0.0539949    0.0107193
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0194458   -0.0176296    0.0565211
21-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0119535   -0.0463807    0.0224737
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0505413   -0.0198910    0.1209737
21-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0183158   -0.0687120    0.0320804
21-24 months   ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CONTENT          PERU                           1                    0                  0.0469311   -0.1228037    0.2166660
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0104173   -0.0769219    0.0560873
21-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0054969   -0.0182172    0.0292109
21-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 -0.0470756   -0.0997518    0.0056005


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0107577   -0.0223717    0.0008563
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0058151   -0.0165417    0.0049115
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0043401   -0.0138671    0.0051870
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0116270   -0.0228379   -0.0004161
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                -0.0050106   -0.0129537    0.0029324
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0116422    0.0007097    0.0225747
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0075792   -0.0201390    0.0049806
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0144756   -0.0267302   -0.0022210
0-3 months     ki1000108-IRC              INDIA                          0                    NA                -0.0047543   -0.0118260    0.0023175
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.0330433   -0.0535883   -0.0124984
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0118503   -0.0231121    0.0468127
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0136798   -0.0214675   -0.0058921
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0018324   -0.0102560    0.0065912
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0040404   -0.0089058    0.0008249
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0097094   -0.0157019   -0.0037168
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0069320   -0.0097095   -0.0041545
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0037761   -0.0073034   -0.0002489
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0003617   -0.0074600    0.0067367
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0029756   -0.0526254    0.0585767
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                -0.0003967   -0.0007602   -0.0000332
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0033735   -0.0050871   -0.0016599
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0140499   -0.0199377   -0.0081621
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0095615   -0.0112869   -0.0078361
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0150170   -0.0167346   -0.0132994
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0019152   -0.0100546    0.0062243
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0032359   -0.0106506    0.0041787
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0063223   -0.0184685    0.0058240
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0054965   -0.0024018    0.0133949
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0096117   -0.0003949    0.0196183
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                 0.0004779   -0.0059807    0.0069366
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0045686   -0.0077594    0.0168966
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0004748   -0.0092293    0.0101789
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0033562   -0.0132489    0.0065365
3-6 months     ki1000108-IRC              INDIA                          0                    NA                -0.0052264   -0.0126392    0.0021863
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.0015361   -0.0179687    0.0148966
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0144744   -0.0029288    0.0318776
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0008796   -0.0056422    0.0038829
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0041892   -0.0136334    0.0052550
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0023442   -0.0024149    0.0071032
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0004330   -0.0048394    0.0057053
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0036482    0.0009070    0.0063894
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                 0.0014554   -0.0016081    0.0045190
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0011076   -0.0046489    0.0068640
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0191705    0.0011783    0.0371627
3-6 months     ki1114097-CONTENT          PERU                           0                    NA                 0.0049435   -0.0013795    0.0112666
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                 0.0001627   -0.0002686    0.0005940
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0023634    0.0007811    0.0039456
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0017013   -0.0063929    0.0029904
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0019911   -0.0033426   -0.0006396
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0037198    0.0019804    0.0054592
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0022080   -0.0028889    0.0073050
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0027791   -0.0085686    0.0030105
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0061441   -0.0060687    0.0183569
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0008650   -0.0054855    0.0072155
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0011194   -0.0073652    0.0051264
6-9 months     ki0047075b-MAL-ED          PERU                           0                    NA                 0.0037922   -0.0025348    0.0101192
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0039238   -0.0027272    0.0105747
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0042371   -0.0063331    0.0148074
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0001954   -0.0079469    0.0075561
6-9 months     ki1000108-IRC              INDIA                          0                    NA                 0.0022086   -0.0036463    0.0080636
6-9 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0083467   -0.0050586    0.0217520
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0165097    0.0010639    0.0319555
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0045482    0.0000288    0.0090675
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0120892   -0.0010976    0.0252759
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0052227   -0.0005823    0.0110277
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0006816   -0.0033223    0.0046855
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0015874   -0.0053299    0.0021552
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0015460   -0.0044039    0.0013119
6-9 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0031954   -0.0072398    0.0008491
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0112962   -0.0016178    0.0242102
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0062286   -0.0013136    0.0137708
6-9 months     ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0137805   -0.0026674    0.0302284
6-9 months     ki1114097-CONTENT          PERU                           0                    NA                 0.0009295   -0.0043101    0.0061691
6-9 months     ki1119695-PROBIT           BELARUS                        0                    NA                 0.0000923   -0.0002377    0.0004223
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0000647   -0.0013933    0.0015226
6-9 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0010148   -0.0040356    0.0060652
6-9 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0021592   -0.0036079   -0.0007105
6-9 months     ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0078450   -0.0173560    0.0016661
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0009070   -0.0038449    0.0020310
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0022660   -0.0087798    0.0042477
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0014186   -0.0100693    0.0129065
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0029807   -0.0030033    0.0089646
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0008760   -0.0058449    0.0040929
9-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0034347   -0.0081647    0.0012953
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0001708   -0.0076994    0.0080410
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0041012   -0.0033443    0.0115467
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0046964   -0.0052496    0.0146424
9-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0037319   -0.0096257    0.0021619
9-12 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0035009   -0.0180362    0.0110345
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0053898   -0.0199950    0.0092155
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0000543   -0.0054873    0.0053786
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0157530    0.0002444    0.0312616
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0015833   -0.0066667    0.0035001
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0031312   -0.0065877    0.0003253
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0005980   -0.0027934    0.0039894
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0019499   -0.0042813    0.0003815
9-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0021109   -0.0064654    0.0022436
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0002277   -0.0150079    0.0154634
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0077735    0.0006134    0.0149335
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0010719   -0.0057715    0.0079152
9-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0039198   -0.0230178    0.0151783
9-12 months    ki1114097-CONTENT          PERU                           0                    NA                 0.0025896   -0.0031432    0.0083224
9-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0000978   -0.0003648    0.0005604
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0000591   -0.0015080    0.0016262
9-12 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0026334   -0.0069942    0.0017275
9-12 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0001322   -0.0016493    0.0013850
9-12 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0007151   -0.0138712    0.0124410
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0002324   -0.0025662    0.0021014
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0007142   -0.0054407    0.0068692
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0086409   -0.0034027    0.0206845
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0004562   -0.0071565    0.0062440
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0022614   -0.0089401    0.0044174
12-15 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0009540   -0.0053288    0.0072369
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0034454   -0.0055653    0.0124560
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0068517   -0.0171126    0.0034092
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0033218   -0.0044025    0.0110461
12-15 months   ki1000108-IRC              INDIA                          0                    NA                -0.0020012   -0.0067440    0.0027416
12-15 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0014862   -0.0176546    0.0146822
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0081969   -0.0351041    0.0187103
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0077250   -0.0136959   -0.0017542
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0066887   -0.0188274    0.0054501
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0020623   -0.0035735    0.0076981
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0022993   -0.0065431    0.0019445
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0043585   -0.0086114   -0.0001057
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0006554   -0.0033437    0.0020328
12-15 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0031797   -0.0003899    0.0067492
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0126111   -0.0023558    0.0275780
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0013736   -0.0067769    0.0095242
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0008214   -0.0051982    0.0068410
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0092464   -0.0076513    0.0261442
12-15 months   ki1114097-CONTENT          PERU                           0                    NA                -0.0024272   -0.0071558    0.0023015
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0008872   -0.0021748    0.0039492
12-15 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0015185   -0.0063766    0.0033396
12-15 months   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0044040   -0.0254121    0.0342202
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0014556   -0.0039507    0.0010396
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0014689   -0.0082785    0.0053407
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0053876   -0.0018998    0.0126749
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0029206   -0.0099761    0.0041350
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0019170   -0.0089662    0.0051322
15-18 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0016692   -0.0077235    0.0043850
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0033644   -0.0093362    0.0160650
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0033826   -0.0069099    0.0136752
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0042818   -0.0116181    0.0030544
15-18 months   ki1000108-IRC              INDIA                          0                    NA                 0.0049855    0.0000876    0.0098833
15-18 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0022963   -0.0148402    0.0102477
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0082392    0.0013825    0.0150959
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0012050   -0.0140885    0.0116785
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0084330   -0.0144213   -0.0024447
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0025580   -0.0011375    0.0062534
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0027881   -0.0066706    0.0010945
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0023109   -0.0058695    0.0012476
15-18 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0024386   -0.0058635    0.0009864
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.0018335   -0.0074031    0.0037360
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0008142   -0.0073937    0.0057653
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0082536   -0.0106235    0.0271306
15-18 months   ki1114097-CONTENT          PERU                           0                    NA                -0.0076697   -0.0128884   -0.0024511
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0009846   -0.0055886    0.0036194
15-18 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0007480   -0.0051985    0.0066945
15-18 months   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0085666   -0.0173339    0.0344670
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0027072   -0.0054411    0.0000267
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0033853   -0.0034711    0.0102418
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0029021   -0.0118826    0.0060784
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0018812   -0.0050334    0.0087958
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0016300   -0.0036789    0.0069390
18-21 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0025397   -0.0101680    0.0050887
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0015045   -0.0146101    0.0116011
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0055941   -0.0173071    0.0061189
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0041344   -0.0113115    0.0030426
18-21 months   ki1000108-IRC              INDIA                          0                    NA                -0.0006877   -0.0064658    0.0050904
18-21 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0084947   -0.0208564    0.0038671
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0023118   -0.0088945    0.0042709
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0025238   -0.0008027    0.0058504
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0010306   -0.0053012    0.0032400
18-21 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0012600   -0.0027434    0.0052635
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0024028   -0.0085827    0.0037770
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0065992   -0.0119158    0.0251141
18-21 months   ki1114097-CONTENT          PERU                           0                    NA                -0.0002131   -0.0061092    0.0056831
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0012414   -0.0055679    0.0080507
18-21 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0025203   -0.0032904    0.0083310
18-21 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0007547   -0.0152487    0.0137394
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0061837   -0.0127686    0.0004013
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0004517   -0.0091172    0.0082138
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0007297   -0.0059568    0.0044974
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0039269   -0.0057905    0.0136443
21-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0070437   -0.0034103    0.0174978
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0112450   -0.0204036   -0.0020865
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0000318   -0.0116200    0.0116837
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0036303   -0.0031288    0.0103895
21-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0062739   -0.0130676    0.0005198
21-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0001447   -0.0179322    0.0176427
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0050080   -0.0024253    0.0124412
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0033681   -0.0068229    0.0000866
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0031909   -0.0018665    0.0082483
21-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0012457   -0.0044674    0.0019760
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0086517   -0.0028157    0.0201190
21-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0079004   -0.0287277    0.0129269
21-24 months   ki1114097-CONTENT          PERU                           0                    NA                 0.0061751   -0.0167359    0.0290862
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0010066   -0.0155335    0.0135202
21-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0017746   -0.0042190    0.0077682
21-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0156878   -0.0351410    0.0037654

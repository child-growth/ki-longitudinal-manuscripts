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

**Outcome Variable:** y_rate_haz

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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0             202     243  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1              41     243  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0             152     168  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1              16     168  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          0             155     183  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          1              28     183  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          0             140     156  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          1              16     156  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           0             233     265  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           1              32     265  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             191     211  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              20     211  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             192     228  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              36     228  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0              72      88  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              16      88  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          0             334     377  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          1              43     377  y_rate_haz       
0-3 months     ki1000109-EE               PAKISTAN                       0             170     303  y_rate_haz       
0-3 months     ki1000109-EE               PAKISTAN                       1             133     303  y_rate_haz       
0-3 months     ki1000109-ResPak           PAKISTAN                       0              55      80  y_rate_haz       
0-3 months     ki1000109-ResPak           PAKISTAN                       1              25      80  y_rate_haz       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0             918    1261  y_rate_haz       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1             343    1261  y_rate_haz       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0             477     566  y_rate_haz       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1              89     566  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0             576     640  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1              64     640  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0             622     721  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              99     721  y_rate_haz       
0-3 months     ki1101329-Keneba           GAMBIA                         0            1203    1276  y_rate_haz       
0-3 months     ki1101329-Keneba           GAMBIA                         1              73    1276  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0             421     509  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1              88     509  y_rate_haz       
0-3 months     ki1114097-CMIN             BANGLADESH                     0              26      43  y_rate_haz       
0-3 months     ki1114097-CMIN             BANGLADESH                     1              17      43  y_rate_haz       
0-3 months     ki1114097-CONTENT          PERU                           0              28      29  y_rate_haz       
0-3 months     ki1114097-CONTENT          PERU                           1               1      29  y_rate_haz       
0-3 months     ki1119695-PROBIT           BELARUS                        0           15192   15319  y_rate_haz       
0-3 months     ki1119695-PROBIT           BELARUS                        1             127   15319  y_rate_haz       
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0            7203    7982  y_rate_haz       
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1             779    7982  y_rate_haz       
0-3 months     ki1135781-COHORTS          GUATEMALA                      0             690     728  y_rate_haz       
0-3 months     ki1135781-COHORTS          GUATEMALA                      1              38     728  y_rate_haz       
0-3 months     ki1135781-COHORTS          INDIA                          0            5708    6465  y_rate_haz       
0-3 months     ki1135781-COHORTS          INDIA                          1             757    6465  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0           13573   19879  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1            6306   19879  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0            1774    2517  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1             743    2517  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0             195     231  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1              36     231  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0             183     208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1              25     208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          0             195     230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          1              35     230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          0             206     233  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          1              27     233  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           0             233     267  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           1              34     267  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             218     243  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              25     243  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             201     239  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              38     239  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0             244     307  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              63     307  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          0             349     397  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          1              48     397  y_rate_haz       
3-6 months     ki1000109-EE               PAKISTAN                       0             158     280  y_rate_haz       
3-6 months     ki1000109-EE               PAKISTAN                       1             122     280  y_rate_haz       
3-6 months     ki1000109-ResPak           PAKISTAN                       0             116     156  y_rate_haz       
3-6 months     ki1000109-ResPak           PAKISTAN                       1              40     156  y_rate_haz       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0             834    1124  y_rate_haz       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1             290    1124  y_rate_haz       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0             441     523  y_rate_haz       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1              82     523  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0             537     598  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1              61     598  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0             598     695  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              97     695  y_rate_haz       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1546    1661  y_rate_haz       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             115    1661  y_rate_haz       
3-6 months     ki1101329-Keneba           GAMBIA                         0            1261    1397  y_rate_haz       
3-6 months     ki1101329-Keneba           GAMBIA                         1             136    1397  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0             391     469  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1              78     469  y_rate_haz       
3-6 months     ki1114097-CMIN             BANGLADESH                     0             114     185  y_rate_haz       
3-6 months     ki1114097-CMIN             BANGLADESH                     1              71     185  y_rate_haz       
3-6 months     ki1114097-CONTENT          PERU                           0             196     214  y_rate_haz       
3-6 months     ki1114097-CONTENT          PERU                           1              18     214  y_rate_haz       
3-6 months     ki1119695-PROBIT           BELARUS                        0           13208   13309  y_rate_haz       
3-6 months     ki1119695-PROBIT           BELARUS                        1             101   13309  y_rate_haz       
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0            5554    6178  y_rate_haz       
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1             624    6178  y_rate_haz       
3-6 months     ki1135781-COHORTS          GUATEMALA                      0             693     805  y_rate_haz       
3-6 months     ki1135781-COHORTS          GUATEMALA                      1             112     805  y_rate_haz       
3-6 months     ki1135781-COHORTS          INDIA                          0            5754    6509  y_rate_haz       
3-6 months     ki1135781-COHORTS          INDIA                          1             755    6509  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0            8744   12581  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1            3837   12581  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0            1325    1840  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1             515    1840  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0             189     224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1              35     224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0             174     198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1              24     198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          0             195     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          1              35     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          0             203     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          1              27     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           0             212     245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           1              33     245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             208     231  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              23     231  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             188     225  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              37     225  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0             250     313  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              63     313  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          0             358     407  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          1              49     407  y_rate_haz       
6-9 months     ki1000109-EE               PAKISTAN                       0             173     304  y_rate_haz       
6-9 months     ki1000109-EE               PAKISTAN                       1             131     304  y_rate_haz       
6-9 months     ki1000109-ResPak           PAKISTAN                       0             106     143  y_rate_haz       
6-9 months     ki1000109-ResPak           PAKISTAN                       1              37     143  y_rate_haz       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0             836    1144  y_rate_haz       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1             308    1144  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0             188     314  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1             126     314  y_rate_haz       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0             420     498  y_rate_haz       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     1              78     498  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0             506     565  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1              59     565  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0             595     688  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              93     688  y_rate_haz       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1389    1488  y_rate_haz       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              99    1488  y_rate_haz       
6-9 months     ki1101329-Keneba           GAMBIA                         0             817     905  y_rate_haz       
6-9 months     ki1101329-Keneba           GAMBIA                         1              88     905  y_rate_haz       
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0             158     213  y_rate_haz       
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1              55     213  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0             405     481  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1              76     481  y_rate_haz       
6-9 months     ki1114097-CMIN             BANGLADESH                     0             107     177  y_rate_haz       
6-9 months     ki1114097-CMIN             BANGLADESH                     1              70     177  y_rate_haz       
6-9 months     ki1114097-CONTENT          PERU                           0             196     214  y_rate_haz       
6-9 months     ki1114097-CONTENT          PERU                           1              18     214  y_rate_haz       
6-9 months     ki1119695-PROBIT           BELARUS                        0           12336   12428  y_rate_haz       
6-9 months     ki1119695-PROBIT           BELARUS                        1              92   12428  y_rate_haz       
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       0            5347    5929  y_rate_haz       
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1             582    5929  y_rate_haz       
6-9 months     ki1135781-COHORTS          GUATEMALA                      0             694     822  y_rate_haz       
6-9 months     ki1135781-COHORTS          GUATEMALA                      1             128     822  y_rate_haz       
6-9 months     ki1135781-COHORTS          INDIA                          0            5262    5965  y_rate_haz       
6-9 months     ki1135781-COHORTS          INDIA                          1             703    5965  y_rate_haz       
6-9 months     ki1148112-LCNI-5           MALAWI                         0             358     564  y_rate_haz       
6-9 months     ki1148112-LCNI-5           MALAWI                         1             206     564  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0            2234    3054  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1             820    3054  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0             188     225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1              37     225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0             171     194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1              23     194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          0             191     227  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          1              36     227  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          0             202     229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          1              27     229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           0             204     235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           1              31     235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             208     233  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              25     233  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             189     224  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              35     224  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0             255     317  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              62     317  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          0             352     400  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          1              48     400  y_rate_haz       
9-12 months    ki1000109-EE               PAKISTAN                       0             185     326  y_rate_haz       
9-12 months    ki1000109-EE               PAKISTAN                       1             141     326  y_rate_haz       
9-12 months    ki1000109-ResPak           PAKISTAN                       0             102     140  y_rate_haz       
9-12 months    ki1000109-ResPak           PAKISTAN                       1              38     140  y_rate_haz       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0             831    1146  y_rate_haz       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1             315    1146  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             188     311  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             123     311  y_rate_haz       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0             406     482  y_rate_haz       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     1              76     482  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0             506     566  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1              60     566  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0             581     674  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              93     674  y_rate_haz       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1013    1081  y_rate_haz       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              68    1081  y_rate_haz       
9-12 months    ki1101329-Keneba           GAMBIA                         0             802     883  y_rate_haz       
9-12 months    ki1101329-Keneba           GAMBIA                         1              81     883  y_rate_haz       
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0             136     186  y_rate_haz       
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1              50     186  y_rate_haz       
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   0             875    1119  y_rate_haz       
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   1             244    1119  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0             392     469  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1              77     469  y_rate_haz       
9-12 months    ki1114097-CMIN             BANGLADESH                     0              96     160  y_rate_haz       
9-12 months    ki1114097-CMIN             BANGLADESH                     1              64     160  y_rate_haz       
9-12 months    ki1114097-CONTENT          PERU                           0             194     212  y_rate_haz       
9-12 months    ki1114097-CONTENT          PERU                           1              18     212  y_rate_haz       
9-12 months    ki1119695-PROBIT           BELARUS                        0           12586   12682  y_rate_haz       
9-12 months    ki1119695-PROBIT           BELARUS                        1              96   12682  y_rate_haz       
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0            5353    5933  y_rate_haz       
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1             580    5933  y_rate_haz       
9-12 months    ki1135781-COHORTS          GUATEMALA                      0             760     931  y_rate_haz       
9-12 months    ki1135781-COHORTS          GUATEMALA                      1             171     931  y_rate_haz       
9-12 months    ki1135781-COHORTS          INDIA                          0            4532    5135  y_rate_haz       
9-12 months    ki1135781-COHORTS          INDIA                          1             603    5135  y_rate_haz       
9-12 months    ki1148112-LCNI-5           MALAWI                         0             236     386  y_rate_haz       
9-12 months    ki1148112-LCNI-5           MALAWI                         1             150     386  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0            2554    3501  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1             947    3501  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0             179     212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1              33     212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0             162     184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1              22     184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          0             190     226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          1              36     226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          0             203     230  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          1              27     230  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           0             195     224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           1              29     224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             203     228  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              25     228  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             191     226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              35     226  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0             260     329  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              69     329  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          0             343     390  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          1              47     390  y_rate_haz       
12-15 months   ki1000109-EE               PAKISTAN                       0             164     297  y_rate_haz       
12-15 months   ki1000109-EE               PAKISTAN                       1             133     297  y_rate_haz       
12-15 months   ki1000109-ResPak           PAKISTAN                       0              62      92  y_rate_haz       
12-15 months   ki1000109-ResPak           PAKISTAN                       1              30      92  y_rate_haz       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0             852    1168  y_rate_haz       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1             316    1168  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0             185     303  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1             118     303  y_rate_haz       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0             387     461  y_rate_haz       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     1              74     461  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0             480     532  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1              52     532  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0             565     660  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              95     660  y_rate_haz       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             740     791  y_rate_haz       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              51     791  y_rate_haz       
12-15 months   ki1101329-Keneba           GAMBIA                         0            1219    1339  y_rate_haz       
12-15 months   ki1101329-Keneba           GAMBIA                         1             120    1339  y_rate_haz       
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      0              72      97  y_rate_haz       
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1              25      97  y_rate_haz       
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0             773     978  y_rate_haz       
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1             205     978  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0             388     469  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1              81     469  y_rate_haz       
12-15 months   ki1114097-CMIN             BANGLADESH                     0              95     160  y_rate_haz       
12-15 months   ki1114097-CMIN             BANGLADESH                     1              65     160  y_rate_haz       
12-15 months   ki1114097-CONTENT          PERU                           0             181     199  y_rate_haz       
12-15 months   ki1114097-CONTENT          PERU                           1              18     199  y_rate_haz       
12-15 months   ki1119695-PROBIT           BELARUS                        0             998    1001  y_rate_haz       
12-15 months   ki1119695-PROBIT           BELARUS                        1               3    1001  y_rate_haz       
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            2249    2548  y_rate_haz       
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             299    2548  y_rate_haz       
12-15 months   ki1135781-COHORTS          GUATEMALA                      0             685     885  y_rate_haz       
12-15 months   ki1135781-COHORTS          GUATEMALA                      1             200     885  y_rate_haz       
12-15 months   ki1148112-LCNI-5           MALAWI                         0              74     127  y_rate_haz       
12-15 months   ki1148112-LCNI-5           MALAWI                         1              53     127  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0            2556    3549  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1             993    3549  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0             179     212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1              33     212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0             157     175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1              18     175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          0             190     226  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          1              36     226  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          0             200     227  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          1              27     227  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           0             184     213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           1              29     213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             202     225  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              23     225  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             182     217  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              35     217  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0             252     321  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              69     321  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          0             337     382  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          1              45     382  y_rate_haz       
15-18 months   ki1000109-EE               PAKISTAN                       0             159     278  y_rate_haz       
15-18 months   ki1000109-EE               PAKISTAN                       1             119     278  y_rate_haz       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0             854    1171  y_rate_haz       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1             317    1171  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0             177     291  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1             114     291  y_rate_haz       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0             372     449  y_rate_haz       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     1              77     449  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0             478     528  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1              50     528  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0             517     604  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              87     604  y_rate_haz       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             619     664  y_rate_haz       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              45     664  y_rate_haz       
15-18 months   ki1101329-Keneba           GAMBIA                         0            1241    1359  y_rate_haz       
15-18 months   ki1101329-Keneba           GAMBIA                         1             118    1359  y_rate_haz       
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0             808    1021  y_rate_haz       
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1             213    1021  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0             398     480  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1              82     480  y_rate_haz       
15-18 months   ki1114097-CMIN             BANGLADESH                     0              97     163  y_rate_haz       
15-18 months   ki1114097-CMIN             BANGLADESH                     1              66     163  y_rate_haz       
15-18 months   ki1114097-CONTENT          PERU                           0             172     189  y_rate_haz       
15-18 months   ki1114097-CONTENT          PERU                           1              17     189  y_rate_haz       
15-18 months   ki1119695-PROBIT           BELARUS                        0             274     275  y_rate_haz       
15-18 months   ki1119695-PROBIT           BELARUS                        1               1     275  y_rate_haz       
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            1776    2036  y_rate_haz       
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             260    2036  y_rate_haz       
15-18 months   ki1135781-COHORTS          GUATEMALA                      0             618     788  y_rate_haz       
15-18 months   ki1135781-COHORTS          GUATEMALA                      1             170     788  y_rate_haz       
15-18 months   ki1148112-LCNI-5           MALAWI                         0              71     120  y_rate_haz       
15-18 months   ki1148112-LCNI-5           MALAWI                         1              49     120  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0            2543    3550  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1            1007    3550  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0             176     209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1              33     209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0             149     167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1              18     167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          0             190     226  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          1              36     226  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          0             200     227  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          1              27     227  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           0             177     202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           1              25     202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             209     233  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              24     233  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             172     204  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              32     204  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0             239     305  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              66     305  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          0             332     379  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          1              47     379  y_rate_haz       
18-21 months   ki1000109-EE               PAKISTAN                       0             159     254  y_rate_haz       
18-21 months   ki1000109-EE               PAKISTAN                       1              95     254  y_rate_haz       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0             350     422  y_rate_haz       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     1              72     422  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0             487     541  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1              54     541  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0             472     546  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              74     546  y_rate_haz       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               9       9  y_rate_haz       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       9  y_rate_haz       
18-21 months   ki1101329-Keneba           GAMBIA                         0            1217    1348  y_rate_haz       
18-21 months   ki1101329-Keneba           GAMBIA                         1             131    1348  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0             370     445  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1              75     445  y_rate_haz       
18-21 months   ki1114097-CMIN             BANGLADESH                     0             100     165  y_rate_haz       
18-21 months   ki1114097-CMIN             BANGLADESH                     1              65     165  y_rate_haz       
18-21 months   ki1114097-CONTENT          PERU                           0             168     183  y_rate_haz       
18-21 months   ki1114097-CONTENT          PERU                           1              15     183  y_rate_haz       
18-21 months   ki1119695-PROBIT           BELARUS                        0             215     218  y_rate_haz       
18-21 months   ki1119695-PROBIT           BELARUS                        1               3     218  y_rate_haz       
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            1386    1595  y_rate_haz       
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             209    1595  y_rate_haz       
18-21 months   ki1135781-COHORTS          GUATEMALA                      0             607     778  y_rate_haz       
18-21 months   ki1135781-COHORTS          GUATEMALA                      1             171     778  y_rate_haz       
18-21 months   ki1148112-LCNI-5           MALAWI                         0             313     477  y_rate_haz       
18-21 months   ki1148112-LCNI-5           MALAWI                         1             164     477  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0             175     207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1              32     207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0             146     165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1              19     165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          0             190     226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          1              36     226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          0             200     227  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          1              27     227  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           0             165     189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           1              24     189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             211     235  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              24     235  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             173     204  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              31     204  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0             242     308  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              66     308  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          0             340     389  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          1              49     389  y_rate_haz       
21-24 months   ki1000109-EE               PAKISTAN                       0              65     106  y_rate_haz       
21-24 months   ki1000109-EE               PAKISTAN                       1              41     106  y_rate_haz       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0             342     411  y_rate_haz       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     1              69     411  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0             423     471  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1              48     471  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0             422     490  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              68     490  y_rate_haz       
21-24 months   ki1101329-Keneba           GAMBIA                         0            1090    1205  y_rate_haz       
21-24 months   ki1101329-Keneba           GAMBIA                         1             115    1205  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0             286     342  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1              56     342  y_rate_haz       
21-24 months   ki1114097-CMIN             BANGLADESH                     0              78     133  y_rate_haz       
21-24 months   ki1114097-CMIN             BANGLADESH                     1              55     133  y_rate_haz       
21-24 months   ki1114097-CONTENT          PERU                           0              33      38  y_rate_haz       
21-24 months   ki1114097-CONTENT          PERU                           1               5      38  y_rate_haz       
21-24 months   ki1119695-PROBIT           BELARUS                        0             207     209  y_rate_haz       
21-24 months   ki1119695-PROBIT           BELARUS                        1               2     209  y_rate_haz       
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            1006    1169  y_rate_haz       
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             163    1169  y_rate_haz       
21-24 months   ki1135781-COHORTS          GUATEMALA                      0             651     862  y_rate_haz       
21-24 months   ki1135781-COHORTS          GUATEMALA                      1             211     862  y_rate_haz       
21-24 months   ki1148112-LCNI-5           MALAWI                         0             266     410  y_rate_haz       
21-24 months   ki1148112-LCNI-5           MALAWI                         1             144     410  y_rate_haz       


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
![](/tmp/8947feae-9388-4e27-add1-b7e1b5f6ef07/9289e81b-6eb7-41b8-987b-fe68f668f334/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8947feae-9388-4e27-add1-b7e1b5f6ef07/9289e81b-6eb7-41b8-987b-fe68f668f334/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8947feae-9388-4e27-add1-b7e1b5f6ef07/9289e81b-6eb7-41b8-987b-fe68f668f334/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.1528130   -0.1880139   -0.1176122
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0006239   -0.0896612    0.0884134
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0836917    0.0287759    0.1386075
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.5699763    0.3958614    0.7440911
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0796689   -0.1329642   -0.0263736
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0516645   -0.0860275    0.1893564
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0249505   -0.0174225    0.0673234
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.3254794    0.1113815    0.5395772
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                -0.2788161   -0.3139655   -0.2436666
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.0855587   -0.2098720    0.0387547
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.2022320   -0.2525097   -0.1519543
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.1214508   -0.0458438    0.2887454
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1716284   -0.2132064   -0.1300503
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0668690   -0.0348929    0.1686308
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1206835   -0.2300431   -0.0113239
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0037391   -0.2930932    0.3005714
0-3 months     ki1000108-IRC              INDIA                          0                    NA                -0.3182562   -0.3732018   -0.2633106
0-3 months     ki1000108-IRC              INDIA                          1                    NA                 0.2445041    0.0592600    0.4297482
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.3358591   -0.3831231   -0.2885951
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                -0.0524319   -0.1197006    0.0148367
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                -0.4361703   -0.5816648   -0.2906757
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.3300673    0.0762535    0.5838811
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.1588213   -0.1888277   -0.1288149
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0404593   -0.0986445    0.0177260
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.2688554   -0.2962112   -0.2414996
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0408712   -0.1133290    0.0315865
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1998094   -0.2178316   -0.1817872
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0903089   -0.1462819   -0.0343359
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.2549669   -0.2732095   -0.2367243
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0828756   -0.1286041   -0.0371471
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.3248551   -0.3460486   -0.3036616
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.4605861    0.3005740    0.6205982
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0621711   -0.0892859   -0.0350564
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1240545    0.0677164    0.1803926
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0561936   -0.1346697    0.0222824
0-3 months     ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0778671   -0.0608522    0.2165865
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                -0.4300228   -0.4902520   -0.3697936
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                -0.1794121   -0.2223632   -0.1364610
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.1842520   -0.1945666   -0.1739374
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.2637172    0.2322286    0.2952059
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.5516312   -0.5732089   -0.5300535
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.2674868   -0.3888216   -0.1461520
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0862451   -0.0932466   -0.0792437
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                 0.1256420    0.1039976    0.1472863
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0086465    0.0032262    0.0140668
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1679013    0.1597925    0.1760101
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.3266438   -0.3601071   -0.2931805
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.1483860   -0.1980081   -0.0987638
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0329708   -0.0577730   -0.0081686
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0318703   -0.0401579    0.1038984
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0437586    0.0044593    0.0830579
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.1775495    0.0919708    0.2631282
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0568603   -0.0885066   -0.0252139
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0610924   -0.0045932    0.1267780
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0448995   -0.0724770   -0.0173220
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.1414306    0.0679224    0.2149387
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                 0.0073231   -0.0254570    0.0401031
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.1524281    0.0628959    0.2419604
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0186938   -0.0579563    0.0205688
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.1450546    0.0191679    0.2709413
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0834952   -0.1174837   -0.0495066
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0071708   -0.0856435    0.0999851
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1271942   -0.1797549   -0.0746335
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0096986   -0.1160556    0.0966584
3-6 months     ki1000108-IRC              INDIA                          0                    NA                -0.0556838   -0.0880157   -0.0233519
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0250340   -0.1057763    0.0557082
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0321080   -0.0033074    0.0675234
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                 0.1114868    0.0690623    0.1539114
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0188162   -0.0890171    0.0513847
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.2344301    0.0810218    0.3878384
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0354183   -0.0593062   -0.0115304
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0446133    0.0187671    0.0704596
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0563870   -0.0798076   -0.0329663
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0569855   -0.1161859    0.0022149
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0392993   -0.0556537   -0.0229448
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0940391    0.0394502    0.1486280
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0126631   -0.0048752    0.0302014
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.1072207    0.0586631    0.1557782
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0926826   -0.1097922   -0.0755730
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0229233   -0.0450537    0.0909003
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0232869   -0.0428782   -0.0036957
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.0354274   -0.0193236    0.0901785
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1787012   -0.1984297   -0.1589728
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0636978   -0.1112067   -0.0161890
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0619679   -0.0988688   -0.0250669
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0768503    0.0196512    0.1340494
3-6 months     ki1114097-CONTENT          PERU                           0                    NA                -0.0004568   -0.0235562    0.0226426
3-6 months     ki1114097-CONTENT          PERU                           1                    NA                 0.1578659    0.0903128    0.2254191
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                 0.0461095    0.0264369    0.0657821
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                 0.1895105    0.1668666    0.2121544
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0076733   -0.0173581    0.0020115
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0549402    0.0252995    0.0845809
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.1086603   -0.1237716   -0.0935489
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0229147   -0.0686246    0.0227952
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0655939   -0.0714422   -0.0597456
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                 0.0170203   -0.0003685    0.0344090
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0289460   -0.0342612   -0.0236309
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0542722    0.0456750    0.0628694
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0374232   -0.0534804   -0.0213660
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0661611    0.0406991    0.0916232
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0682142   -0.0871402   -0.0492883
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0665404   -0.1092451   -0.0238357
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0145317   -0.0239041    0.0529676
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0575294   -0.1330916    0.0180327
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0764324   -0.0997191   -0.0531456
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0471583   -0.1162310    0.0219144
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0334122   -0.0530839   -0.0137406
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0346573   -0.1052998    0.0359852
6-9 months     ki0047075b-MAL-ED          PERU                           0                    NA                -0.0305379   -0.0564003   -0.0046754
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.0531144   -0.1228286    0.0165998
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0225248   -0.0510968    0.0060472
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0141588   -0.1059786    0.1342962
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1005613   -0.1354743   -0.0656484
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0265933   -0.1288742    0.0756877
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0852190   -0.1254459   -0.0449921
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0825982   -0.1448970   -0.0202994
6-9 months     ki1000108-IRC              INDIA                          0                    NA                -0.0231103   -0.0456463   -0.0005744
6-9 months     ki1000108-IRC              INDIA                          1                    NA                 0.0349592   -0.0330923    0.1030107
6-9 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.1060811   -0.1317395   -0.0804226
6-9 months     ki1000109-EE               PAKISTAN                       1                    NA                -0.0618610   -0.0955762   -0.0281459
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0119069   -0.0389269    0.0627406
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0309018   -0.0827807    0.1445844
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0971823   -0.1112972   -0.0830674
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0417820   -0.0639700   -0.0195940
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.1282526   -0.1489897   -0.1075155
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.0705268   -0.1029455   -0.0381082
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0617302   -0.0809176   -0.0425429
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0448480   -0.0940855    0.0043895
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0624114   -0.0739515   -0.0508712
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0528697   -0.0866488   -0.0190906
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0335045   -0.0472318   -0.0197772
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0159407   -0.0506787    0.0187973
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0532599   -0.0697446   -0.0367751
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0366747   -0.1037148    0.0303653
6-9 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0164089   -0.0399464    0.0071286
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.0146936   -0.0619647    0.0913519
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.1163015   -0.1373103   -0.0952927
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0376284   -0.0801226    0.0048657
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0546665   -0.0712823   -0.0380508
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0043754   -0.0638001    0.0725508
6-9 months     ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0549774   -0.0879665   -0.0219883
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0359078   -0.0819888    0.0101731
6-9 months     ki1114097-CONTENT          PERU                           0                    NA                -0.0253444   -0.0476093   -0.0030795
6-9 months     ki1114097-CONTENT          PERU                           1                    NA                -0.0121002   -0.0744502    0.0502498
6-9 months     ki1119695-PROBIT           BELARUS                        0                    NA                 0.0506007    0.0358094    0.0653920
6-9 months     ki1119695-PROBIT           BELARUS                        1                    NA                 0.1023982    0.0727666    0.1320299
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0371510   -0.0459717   -0.0283303
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0208660   -0.0058888    0.0476208
6-9 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.1308378   -0.1436980   -0.1179777
6-9 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0624637   -0.0937645   -0.0311628
6-9 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.1006450   -0.1057264   -0.0955635
6-9 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0620327   -0.0767350   -0.0473305
6-9 months     ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0086245   -0.0107963    0.0280453
6-9 months     ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0656031    0.0385458    0.0926605
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0388718   -0.0492708   -0.0284728
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0021757   -0.0185359    0.0141845
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0952892   -0.1123189   -0.0782596
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0530473   -0.0996162   -0.0064784
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0090208   -0.0249369    0.0429785
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0483552   -0.0216054    0.1183158
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0950561   -0.1124796   -0.0776325
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0668505   -0.1050312   -0.0286699
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0627814   -0.0805323   -0.0450306
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0353154   -0.0887759    0.0181451
9-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0501553   -0.0728645   -0.0274462
9-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0071468   -0.0766686    0.0623751
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0827318   -0.1099917   -0.0554718
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0555497   -0.1640426    0.0529432
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1545114   -0.1914449   -0.1175778
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2033948   -0.2897026   -0.1170870
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1344730   -0.1652779   -0.1036680
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0395854   -0.1096070    0.0304362
9-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0373900   -0.0559331   -0.0188470
9-12 months    ki1000108-IRC              INDIA                          1                    NA                -0.0269999   -0.0648936    0.0108939
9-12 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.1129182   -0.1314005   -0.0944359
9-12 months    ki1000109-EE               PAKISTAN                       1                    NA                -0.0879682   -0.1118623   -0.0640741
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0465955   -0.1123479    0.0191569
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0887644    0.0185080    0.1590208
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0859034   -0.1010913   -0.0707155
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0704837   -0.0965502   -0.0444171
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.1607119   -0.2302794   -0.0911444
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.1183050   -0.2113254   -0.0252847
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0456876   -0.0609606   -0.0304146
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0203348   -0.0622198    0.0215502
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0650237   -0.0766091   -0.0534384
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0478807   -0.0822788   -0.0134827
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0391853   -0.0507660   -0.0276046
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0066181   -0.0401349    0.0268987
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0636387   -0.0782882   -0.0489892
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1198960   -0.1928651   -0.0469269
9-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0996927   -0.1182335   -0.0811519
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.1074390   -0.1720234   -0.0428546
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0650101   -0.0822858   -0.0477345
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0431147   -0.0793780   -0.0068514
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.0658101   -0.0814032   -0.0502169
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0124602   -0.0252295    0.0501499
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0781542   -0.0917425   -0.0645659
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0857791   -0.1373806   -0.0341775
9-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.1141132   -0.1430700   -0.0851564
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0504711   -0.0927913   -0.0081508
9-12 months    ki1114097-CONTENT          PERU                           0                    NA                -0.0309884   -0.0481884   -0.0137884
9-12 months    ki1114097-CONTENT          PERU                           1                    NA                 0.0683299    0.0165792    0.1200805
9-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0361067    0.0146113    0.0576021
9-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0804218    0.0568055    0.1040381
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0613520   -0.0691912   -0.0535128
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0379771   -0.0619137   -0.0140406
9-12 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0906506   -0.1012406   -0.0800606
9-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0809099   -0.1077076   -0.0541122
9-12 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0869896   -0.0920800   -0.0818992
9-12 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0848572   -0.0998719   -0.0698424
9-12 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0527519   -0.0771723   -0.0283315
9-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0305665   -0.0649735    0.0038404
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0606558   -0.0689958   -0.0523158
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0277833   -0.0419764   -0.0135902
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0609310   -0.0779072   -0.0439549
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0327388   -0.0714179    0.0059403
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0007164   -0.0250375    0.0236048
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0208051   -0.0885791    0.0469689
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0583021   -0.0747668   -0.0418374
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0332158   -0.0756752    0.0092437
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0612541   -0.0778696   -0.0446385
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0126282   -0.0524712    0.0272149
12-15 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0687006   -0.0867006   -0.0507006
12-15 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0349962   -0.1138943    0.0439019
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0679138   -0.0911946   -0.0446330
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0060766   -0.0632649    0.0754181
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0695615   -0.0971932   -0.0419298
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0693924   -0.1345803   -0.0042045
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0738137   -0.1074314   -0.0401960
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0676849   -0.1133772   -0.0219925
12-15 months   ki1000108-IRC              INDIA                          0                    NA                -0.0483042   -0.0659171   -0.0306914
12-15 months   ki1000108-IRC              INDIA                          1                    NA                -0.0252699   -0.0865326    0.0359928
12-15 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0210316   -0.0386692   -0.0033940
12-15 months   ki1000109-EE               PAKISTAN                       1                    NA                 0.0239857    0.0058319    0.0421395
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0860697   -0.0031550    0.1752943
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0789668    0.0017339    0.1561998
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0903393   -0.1060001   -0.0746784
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0696936   -0.0942992   -0.0450880
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0147254   -0.0267115    0.0561622
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.0053854   -0.0684430    0.0576722
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.1254160   -0.1448224   -0.1060096
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.1399772   -0.1694220   -0.1105325
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0404291   -0.0511430   -0.0297153
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0442216   -0.0753418   -0.0131014
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0401827   -0.0502590   -0.0301065
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0242890   -0.0528441    0.0042662
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0700502   -0.0846445   -0.0554558
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0064719   -0.0888254    0.1017692
12-15 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0551020   -0.0679409   -0.0422631
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0341997   -0.0700699    0.0016704
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0176840   -0.0445904    0.0092223
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                 0.0110231   -0.0322671    0.0543133
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.0473564   -0.0695355   -0.0251773
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0262627   -0.0532345    0.0007092
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0735705   -0.0840079   -0.0631332
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0391538   -0.0776202   -0.0006875
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0823730   -0.1107164   -0.0540297
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0297980   -0.0620017    0.0024056
12-15 months   ki1114097-CONTENT          PERU                           0                    NA                -0.0721238   -0.0897543   -0.0544934
12-15 months   ki1114097-CONTENT          PERU                           1                    NA                -0.0862495   -0.1321406   -0.0403584
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0631715   -0.0741104   -0.0522325
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0527811   -0.0893761   -0.0161861
12-15 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0938610   -0.1055072   -0.0822148
12-15 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0669610   -0.0884986   -0.0454234
12-15 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0323797   -0.0767170    0.0119576
12-15 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0531621   -0.1231892    0.0168650
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0479871   -0.0552627   -0.0407115
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0373383   -0.0483171   -0.0263595
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0468759   -0.0616719   -0.0320800
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0487550   -0.0821610   -0.0153491
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0195585   -0.0421434    0.0030264
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0320984   -0.0957088    0.0315120
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0380719   -0.0521461   -0.0239978
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0310577   -0.0615686   -0.0005468
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0495956   -0.0661820   -0.0330092
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0856523   -0.1223951   -0.0489094
15-18 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0417241   -0.0577137   -0.0257345
15-18 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0026039   -0.0508367    0.0560445
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0287308   -0.0494209   -0.0080407
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0357054   -0.0808570    0.0094462
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0900379   -0.1145631   -0.0655127
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0626571   -0.1188786   -0.0064355
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0598610   -0.0878732   -0.0318487
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0955300   -0.1438290   -0.0472309
15-18 months   ki1000108-IRC              INDIA                          0                    NA                -0.0426992   -0.0570357   -0.0283628
15-18 months   ki1000108-IRC              INDIA                          1                    NA                 0.0033861   -0.0653057    0.0720780
15-18 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0333965   -0.0481607   -0.0186323
15-18 months   ki1000109-EE               PAKISTAN                       1                    NA                -0.0157629   -0.0334677    0.0019420
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0162443   -0.0327087    0.0002201
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0029005   -0.0286754    0.0228744
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0412961   -0.0585714   -0.0240207
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.0291515   -0.0498205   -0.0084824
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0640139   -0.0804278   -0.0475999
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0244656   -0.0561674    0.0072362
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0379188   -0.0471131   -0.0287245
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0379210   -0.0667633   -0.0090787
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0181033   -0.0270662   -0.0091404
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0092858   -0.0328153    0.0142436
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0206166   -0.0365856   -0.0046476
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0000733   -0.0576392    0.0577859
15-18 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0333026   -0.0452349   -0.0213704
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0356684   -0.0775325    0.0061958
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.0202135   -0.0329684   -0.0074586
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0034040   -0.0439888    0.0371807
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0737822   -0.0864568   -0.0611076
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0450283   -0.0859668   -0.0040897
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0729814   -0.0974583   -0.0485044
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0505994   -0.0824461   -0.0187527
15-18 months   ki1114097-CONTENT          PERU                           0                    NA                -0.0148170   -0.0323972    0.0027632
15-18 months   ki1114097-CONTENT          PERU                           1                    NA                 0.0452793   -0.0022408    0.0927994
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0621454   -0.0739729   -0.0503179
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0614087   -0.0908013   -0.0320161
15-18 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0603655   -0.0725846   -0.0481463
15-18 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0293850   -0.0542017   -0.0045683
15-18 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0538751   -0.0923091   -0.0154411
15-18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0439838   -0.0788270   -0.0091406
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0370781   -0.0441383   -0.0300180
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0225196   -0.0330296   -0.0120095
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0148987   -0.0274726   -0.0023248
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0228288   -0.0551186    0.0094609
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0260740   -0.0506562   -0.0014919
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0308462   -0.0979804    0.1596728
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0056585   -0.0067971    0.0181142
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0095889   -0.0212702    0.0404480
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0343980   -0.0479616   -0.0208344
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0139278   -0.0282849    0.0561405
18-21 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0075265   -0.0235616    0.0085085
18-21 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0172237   -0.0370220    0.0714693
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0322544   -0.0527799   -0.0117289
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0408252   -0.0999584    0.0183079
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0333148   -0.0583724   -0.0082571
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0010254   -0.0580713    0.0601221
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0588587   -0.0836837   -0.0340336
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0145312   -0.0361206    0.0651830
18-21 months   ki1000108-IRC              INDIA                          0                    NA                -0.0407132   -0.0552988   -0.0261275
18-21 months   ki1000108-IRC              INDIA                          1                    NA                -0.0407067   -0.0693816   -0.0120319
18-21 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0370526   -0.0496815   -0.0244237
18-21 months   ki1000109-EE               PAKISTAN                       1                    NA                -0.0345359   -0.0571190   -0.0119527
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0404376   -0.0542826   -0.0265925
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0267274   -0.0554139    0.0019591
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0156269   -0.0241313   -0.0071225
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0367405    0.0110177    0.0624634
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0333399   -0.0420160   -0.0246638
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0100111   -0.0094413    0.0294635
18-21 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0226563   -0.0347668   -0.0105458
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0114339   -0.0555724    0.0327046
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0152075    0.0015750    0.0288400
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0157187   -0.0029556    0.0343930
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0158131   -0.0383286    0.0067025
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0094071   -0.0162346    0.0350488
18-21 months   ki1114097-CONTENT          PERU                           0                    NA                -0.0053477   -0.0216857    0.0109904
18-21 months   ki1114097-CONTENT          PERU                           1                    NA                -0.0123155   -0.0499954    0.0253644
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0705637   -0.0832189   -0.0579085
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0556216   -0.0882686   -0.0229747
18-21 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0229356   -0.0338607   -0.0120104
18-21 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0050316   -0.0277069    0.0176437
18-21 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0137969   -0.0318697    0.0042760
18-21 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0160215   -0.0475055    0.0154626
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0258855    0.0127957    0.0389752
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0358425    0.0031019    0.0685830
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0157078   -0.0018375    0.0332531
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0220279   -0.0150429    0.0590986
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0285693    0.0162618    0.0408768
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0363493    0.0133800    0.0593186
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0023574   -0.0108823    0.0155971
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0290984   -0.0394843    0.0976812
21-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0574692    0.0405867    0.0743516
21-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0535710    0.0234161    0.0837258
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0424443    0.0244680    0.0604206
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0601632    0.0028191    0.1175072
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0086236   -0.0153352    0.0325824
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0106633   -0.0413065    0.0626332
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0119546   -0.0129181    0.0368272
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0418419   -0.0013136    0.0849975
21-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0135354   -0.0278134    0.0007426
21-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0188831   -0.0633656    0.0255995
21-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0002181   -0.0150480    0.0146117
21-24 months   ki1000109-EE               PAKISTAN                       1                    NA                -0.0215709   -0.0452014    0.0020596
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0389173    0.0265307    0.0513039
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0635946    0.0241483    0.1030409
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0470519    0.0379294    0.0561744
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0424182    0.0146813    0.0701552
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0589837    0.0501715    0.0677958
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0552812    0.0315737    0.0789887
21-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0131215    0.0013973    0.0248457
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0425703    0.0078133    0.0773274
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0491655    0.0314308    0.0669001
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0442011    0.0120056    0.0763965
21-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0003690   -0.0247444    0.0240065
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0352727    0.0053721    0.0651733
21-24 months   ki1114097-CONTENT          PERU                           0                    NA                 0.0140936   -0.0161803    0.0443674
21-24 months   ki1114097-CONTENT          PERU                           1                    NA                 0.0694745   -0.0063672    0.1453162
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0178478    0.0042595    0.0314361
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0069849   -0.0252393    0.0392092
21-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0090079   -0.0181556    0.0001398
21-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0036955   -0.0117926    0.0191836
21-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0188208   -0.0013315    0.0389731
21-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0384017    0.0142449    0.0625585


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1222427   -0.1559818   -0.0885037
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1340714    0.0769051    0.1912377
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0590383   -0.1091825   -0.0088941
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0547626    0.0104701    0.0990551
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.2628007   -0.2968934   -0.2287079
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1788096   -0.2278601   -0.1297591
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1375866   -0.1767594   -0.0984138
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0878386   -0.1937874    0.0181102
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2558271   -0.3111464   -0.2005078
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.2160892   -0.2586792   -0.1734992
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.2215495   -0.3646573   -0.0784416
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.1273566   -0.1543372   -0.1003761
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.2319865   -0.2585900   -0.2053830
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2819592   -0.3057954   -0.2581230
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0317680   -0.0569509   -0.0065852
0-3 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                 0.0122587   -0.0591325    0.0836499
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                -0.4284466   -0.4876727   -0.3692205
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1402392   -0.1504678   -0.1300106
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5371921   -0.5589495   -0.5154346
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0616410   -0.0685327   -0.0547493
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0588418    0.0539208    0.0637627
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.2753025   -0.3035698   -0.2470352
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0224408   -0.0460321    0.0011506
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0597292    0.0232017    0.0962566
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0360402   -0.0655320   -0.0065484
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0230785   -0.0496785    0.0035216
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0257461   -0.0055184    0.0570106
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0049345   -0.0429370    0.0330680
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                 0.0663303    0.0389725    0.0936881
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.0366027   -0.0294732    0.1026785
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0166348   -0.0360336    0.0027639
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0845402   -0.1011812   -0.0678992
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0167995   -0.0352345    0.0016355
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1613977   -0.1800128   -0.1427826
3-6 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0085806   -0.0411510    0.0239898
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                 0.0127563   -0.0097402    0.0352528
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0470780    0.0278572    0.0662989
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0012924   -0.0104920    0.0079073
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0963382   -0.1109683   -0.0817082
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0560585   -0.0616251   -0.0504918
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0034426   -0.0083086    0.0014234
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0090589   -0.0227889    0.0046710
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0700232   -0.0872813   -0.0527650
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0087834   -0.0260798    0.0436466
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0703356   -0.0932354   -0.0474358
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0345596   -0.0538350   -0.0152841
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0335784   -0.0576919   -0.0094649
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0177828   -0.0459046    0.0103391
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0934098   -0.1268763   -0.0599434
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0819656   -0.1161677   -0.0477635
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0162677   -0.0378604    0.0053250
6-9 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.0848755   -0.1055404   -0.0642105
6-9 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.0176516   -0.0290488    0.0643521
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0823482   -0.0898643   -0.0748321
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.1052304   -0.1233192   -0.0871417
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0595548   -0.0774135   -0.0416961
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0525643   -0.0685949   -0.0365337
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0125663   -0.0349107    0.0097781
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0951531   -0.1146913   -0.0756149
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0438931   -0.0614010   -0.0263853
6-9 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0518380   -0.0789102   -0.0247658
6-9 months     ki1114097-CONTENT          PERU                           NA                   NA                -0.0242292   -0.0452610   -0.0031973
6-9 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0509267    0.0363627    0.0654908
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0315646   -0.0399465   -0.0231828
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1207546   -0.1326448   -0.1088643
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0961069   -0.1009203   -0.0912936
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.0295141    0.0135818    0.0454463
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0289482   -0.0379437   -0.0199527
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0081784   -0.0226414    0.0389982
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0912399   -0.1070647   -0.0754152
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0622965   -0.0791919   -0.0454011
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0419261   -0.0633861   -0.0204661
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0848621   -0.1117463   -0.0579779
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1549661   -0.1887326   -0.1211995
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1188156   -0.1473352   -0.0902961
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0361313   -0.0530672   -0.0191954
9-12 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.1011889   -0.1159053   -0.0864725
9-12 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.0111211   -0.0642819    0.0420397
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0811963   -0.0946758   -0.0677169
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.1462637   -0.2015231   -0.0910043
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0424748   -0.0569242   -0.0280255
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0656608   -0.0799392   -0.0513823
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1010353   -0.1187259   -0.0833448
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0587254   -0.0745802   -0.0428705
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0487006   -0.0633304   -0.0340708
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0798239   -0.0934194   -0.0662284
9-12 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0900457   -0.1145732   -0.0655181
9-12 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.0224698   -0.0391090   -0.0058306
9-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0366309    0.0156987    0.0575632
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0590873   -0.0665415   -0.0516332
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0885965   -0.0985531   -0.0786400
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0867597   -0.0915783   -0.0819411
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0440977   -0.0635039   -0.0246915
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0521209   -0.0596089   -0.0446330
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0030430   -0.0256176    0.0195316
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0565224   -0.0717497   -0.0412950
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0574550   -0.0729039   -0.0420060
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0653532   -0.0832313   -0.0474751
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0591759   -0.0820448   -0.0363070
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0693563   -0.0944134   -0.0442993
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0712336   -0.0991765   -0.0432907
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0454519   -0.0622041   -0.0286997
12-15 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0004721   -0.0133950    0.0124507
12-15 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.0830506    0.0172209    0.1488804
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0847390   -0.0988912   -0.0705868
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                 0.0088746   -0.0268397    0.0445889
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.1259588   -0.1428870   -0.1090306
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0647004   -0.0791352   -0.0502655
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0532735   -0.0653736   -0.0411734
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0097911   -0.0327495    0.0131674
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0431604   -0.0596572   -0.0266637
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0667249   -0.0775841   -0.0558657
12-15 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0608799   -0.0824031   -0.0393566
12-15 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.0734290   -0.0899048   -0.0569533
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0622748   -0.0728257   -0.0517239
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0875187   -0.0976569   -0.0773805
12-15 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0398116   -0.0766125   -0.0030107
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0450644   -0.0511488   -0.0389801
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0203422   -0.0414264    0.0007419
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0380035   -0.0508395   -0.0251674
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0549346   -0.0699931   -0.0398761
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0360565   -0.0515481   -0.0205649
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0285476   -0.0475339   -0.0095614
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856342   -0.1079770   -0.0632914
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0680871   -0.0915055   -0.0446686
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0385167   -0.0531981   -0.0238352
15-18 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0256550   -0.0369587   -0.0143512
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0117156   -0.0214328   -0.0019983
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.0369125   -0.0500204   -0.0238046
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0576906   -0.0723785   -0.0430027
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0192071   -0.0344910   -0.0039232
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0333564   -0.0447684   -0.0219445
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0168360   -0.0300694   -0.0036026
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0689576   -0.0815283   -0.0563869
15-18 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0627334   -0.0821141   -0.0433527
15-18 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.0091366   -0.0260209    0.0077477
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0623481   -0.0733140   -0.0513822
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0548055   -0.0657287   -0.0438823
15-18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0456083   -0.0712437   -0.0199728
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0328742   -0.0389268   -0.0268217
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0203590   -0.0449122    0.0041942
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0057740   -0.0056559    0.0172040
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0281053   -0.0411303   -0.0150802
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0081141   -0.0233572    0.0071290
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0321665   -0.0513327   -0.0130003
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0282032   -0.0511144   -0.0052921
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0437658   -0.0661084   -0.0214232
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0400816   -0.0533440   -0.0268193
18-21 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0357223   -0.0470222   -0.0244224
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0383890   -0.0508204   -0.0259576
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0212848   -0.0329576   -0.0096120
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0155926    0.0038526    0.0273327
18-21 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0064943   -0.0234244    0.0104357
18-21 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.0059547   -0.0211395    0.0092302
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0689095   -0.0806852   -0.0571338
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0194758   -0.0293221   -0.0096295
18-21 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0153042   -0.0314684    0.0008600
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0164870    0.0004862    0.0324878
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0297886    0.0188457    0.0407315
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0054548   -0.0082397    0.0191492
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0569744    0.0416628    0.0722859
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.0438721    0.0271077    0.0606365
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0088397   -0.0128780    0.0305575
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                 0.0177011   -0.0032847    0.0386869
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0139081   -0.0274784   -0.0003379
21-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0065196   -0.0190677    0.0060285
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                 0.0406915    0.0289394    0.0524435
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0157863    0.0046455    0.0269271
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0481269    0.0325947    0.0636591
21-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                 0.0156162   -0.0032678    0.0345001
21-24 months   ki1114097-CONTENT          PERU                           NA                   NA                 0.0213805   -0.0073799    0.0501409
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.0172279    0.0047469    0.0297089
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0056172   -0.0134884    0.0022541
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.0262296    0.0108190    0.0416402


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.1521891    0.0564051   0.2479732
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.4862846    0.3032853   0.6692838
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.1313334   -0.0156381   0.2783048
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.3005289    0.0819769   0.5190809
0-3 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.1932574    0.0649273   0.3215876
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.3236828    0.1489342   0.4984313
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.2384973    0.1282249   0.3487698
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.1244226   -0.1966387   0.4454838
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                  0.5627603    0.3695826   0.7559381
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                  0.2834272    0.2010214   0.3658330
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.7662376    0.4698267   1.0626484
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.1183621    0.0508854   0.1858387
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.2279842    0.1504802   0.3054881
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.1095005    0.0507149   0.1682862
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.1720913    0.1231293   0.2210533
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                  0.7854412    0.6241808   0.9467016
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.1862257    0.1239301   0.2485212
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1114097-CMIN             BANGLADESH                     1                    0                  0.1340608   -0.0260557   0.2941773
0-3 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.2506107    0.1773047   0.3239168
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.4479692    0.4148301   0.4811083
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    0                  0.2841444    0.1610442   0.4072446
0-3 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    0                  0.2118871    0.1891412   0.2346330
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.1592548    0.1501053   0.1684043
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.1782578    0.1188335   0.2376822
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0648411   -0.0114097   0.1410919
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.1337909    0.0394479   0.2281339
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.1179527    0.0453484   0.1905570
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.1863301    0.1077714   0.2648887
3-6 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.1451051    0.0498791   0.2403310
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.1637483    0.0316390   0.2958577
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0906660   -0.0081240   0.1894559
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.1174956   -0.0012187   0.2362099
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                  0.0306498   -0.0562592   0.1175587
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                  0.0793788    0.0240172   0.1347405
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.2532463    0.0831282   0.4233644
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0800316    0.0416529   0.1184104
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.0005985   -0.0644551   0.0632580
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.1333384    0.0763196   0.1903571
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0945576    0.0431704   0.1459447
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1156059    0.0456096   0.1856023
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                  0.0587144    0.0004313   0.1169975
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.1150034    0.0635797   0.1664272
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    0                  0.1388181    0.0707689   0.2068674
3-6 months     ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1114097-CONTENT          PERU                           1                    0                  0.1583228    0.0870800   0.2295655
3-6 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.1434010    0.1148704   0.1719316
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0626135    0.0314319   0.0937950
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0857455    0.0378352   0.1336558
3-6 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    0                  0.0826142    0.0642737   0.1009547
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0832182    0.0736686   0.0927678
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.1035843    0.0739727   0.1331959
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0016738   -0.0449382   0.0482858
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0720612   -0.1573841   0.0132618
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.0292741   -0.0436476   0.1021958
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0012450   -0.0748962   0.0724061
6-9 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           1                    0                 -0.0225765   -0.0968175   0.0516645
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0366836   -0.0864943   0.1598614
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0739681   -0.0343807   0.1823168
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0026208   -0.0721585   0.0774001
6-9 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     ki1000108-IRC              INDIA                          1                    0                  0.0580696   -0.0134709   0.1296100
6-9 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     ki1000109-EE               PAKISTAN                       1                    0                  0.0442200    0.0016944   0.0867457
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.0189949   -0.1056821   0.1436720
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0554003    0.0233862   0.0874144
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  0.0577258    0.0191250   0.0963266
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0168822   -0.0360585   0.0698230
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0095417   -0.0262646   0.0453479
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0175638   -0.0197835   0.0549111
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0165851   -0.0525004   0.0856707
6-9 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         1                    0                  0.0311025   -0.0492658   0.1114709
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  0.0786731    0.0311866   0.1261596
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0590419   -0.0111357   0.1292195
6-9 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    0                  0.0190696   -0.0375594   0.0756985
6-9 months     ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     ki1114097-CONTENT          PERU                           1                    0                  0.0132442   -0.0527521   0.0792405
6-9 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.0517975    0.0229364   0.0806587
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0580170    0.0298402   0.0861937
6-9 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0683742    0.0344855   0.1022628
6-9 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          1                    0                  0.0386122    0.0230540   0.0541705
6-9 months     ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         1                    0                  0.0569786    0.0235815   0.0903757
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0366961    0.0177665   0.0556258
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0422419   -0.0074762   0.0919601
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.0393344   -0.0382330   0.1169019
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.0282055   -0.0138988   0.0703098
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0274660   -0.0291391   0.0840711
9-12 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           1                    0                  0.0430085   -0.0304109   0.1164280
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0271821   -0.0854880   0.1398522
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0488834   -0.1429045   0.0451378
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0948876    0.0182820   0.1714932
9-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    ki1000108-IRC              INDIA                          1                    0                  0.0103901   -0.0316666   0.0524469
9-12 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    ki1000109-EE               PAKISTAN                       1                    0                  0.0249500   -0.0051546   0.0550545
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                  0.1353599    0.0385444   0.2321753
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0154198   -0.0150767   0.0459163
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  0.0424068   -0.0744425   0.1592562
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0253528   -0.0191777   0.0698833
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0171430   -0.0191897   0.0534756
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0325673   -0.0028957   0.0680302
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0562573   -0.1307509   0.0182364
9-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.0077463   -0.0749939   0.0595014
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  0.0218954   -0.0183787   0.0621696
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                  0.0782702    0.0353334   0.1212071
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0076248   -0.0610752   0.0458255
9-12 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    0                  0.0636421    0.0118452   0.1154390
9-12 months    ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    ki1114097-CONTENT          PERU                           1                    0                  0.0993183    0.0447205   0.1539160
9-12 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    ki1119695-PROBIT           BELARUS                        1                    0                  0.0443151    0.0125378   0.0760924
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0233748   -0.0018205   0.0485701
9-12 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0097407   -0.0190656   0.0385469
9-12 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          1                    0                  0.0021324   -0.0137246   0.0179894
9-12 months    ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         1                    0                  0.0221854   -0.0205207   0.0648915
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0328725    0.0170883   0.0486567
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0281922   -0.0140776   0.0704620
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0200887   -0.0921093   0.0519319
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.0250863   -0.0207576   0.0709303
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0486259    0.0055330   0.0917189
12-15 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.0337044   -0.0475622   0.1149710
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0739904    0.0007231   0.1472577
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0001691   -0.0708482   0.0711864
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0061289   -0.0508156   0.0630733
12-15 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   ki1000108-IRC              INDIA                          1                    0                  0.0230343   -0.0406704   0.0867391
12-15 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   ki1000109-EE               PAKISTAN                       1                    0                  0.0450173    0.0197242   0.0703105
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    0                 -0.0071029   -0.1245479   0.1103422
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0206457   -0.0061024   0.0473938
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.0201108   -0.0957708   0.0555492
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.0145612   -0.0500232   0.0209008
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0037924   -0.0366716   0.0290867
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0158938   -0.0143910   0.0461786
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0765221   -0.0198409   0.1728851
12-15 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         1                    0                  0.0209023   -0.0172373   0.0590419
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  0.0287071   -0.0228960   0.0803103
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                  0.0210938   -0.0198359   0.0620234
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0344167   -0.0054703   0.0743038
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    0                  0.0525750    0.0096389   0.0955111
12-15 months   ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   ki1114097-CONTENT          PERU                           1                    0                 -0.0141257   -0.0632159   0.0349645
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0103903   -0.0277867   0.0485674
12-15 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0269000    0.0023724   0.0514276
12-15 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   ki1148112-LCNI-5           MALAWI                         1                    0                 -0.0207824   -0.1051772   0.0636124
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0106488   -0.0024757   0.0237733
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0018791   -0.0385233   0.0347652
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0125400   -0.0800637   0.0549837
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.0070142   -0.0266260   0.0406545
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0360567   -0.0767066   0.0045932
15-18 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.0443280   -0.0114955   0.1001515
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0069746   -0.0567348   0.0427857
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0273808   -0.0339738   0.0887354
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0356690   -0.0918439   0.0205059
15-18 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   ki1000108-IRC              INDIA                          1                    0                  0.0460854   -0.0243443   0.1165151
15-18 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   ki1000109-EE               PAKISTAN                       1                    0                  0.0176336   -0.0054830   0.0407502
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0133438   -0.0245868   0.0512743
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  0.0121446   -0.0147931   0.0390823
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0395483    0.0036501   0.0754465
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0000022   -0.0303175   0.0303132
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0088174   -0.0163829   0.0340178
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0206899   -0.0391722   0.0805521
15-18 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0023658   -0.0459429   0.0412114
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                  0.0168095   -0.0250100   0.0586289
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0287540   -0.0141132   0.0716212
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    0                  0.0223820   -0.0176904   0.0624543
15-18 months   ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   ki1114097-CONTENT          PERU                           1                    0                  0.0600963    0.0098242   0.1103683
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0007367   -0.0309419   0.0324153
15-18 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0309805    0.0032094   0.0587515
15-18 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   ki1148112-LCNI-5           MALAWI                         1                    0                  0.0098913   -0.0434035   0.0631862
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0145586    0.0024736   0.0266436
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0079301   -0.0426112   0.0267509
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.0569203   -0.0751839   0.1890244
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.0039304   -0.0295231   0.0373839
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0483258    0.0038841   0.0927676
18-21 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.0247502   -0.0322352   0.0817356
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0085708   -0.0713897   0.0542480
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0343402   -0.0300237   0.0987041
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0733898    0.0165957   0.1301840
18-21 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   ki1000108-IRC              INDIA                          1                    0                  0.0000065   -0.0322936   0.0323065
18-21 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   ki1000109-EE               PAKISTAN                       1                    0                  0.0025167   -0.0237950   0.0288284
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0137102   -0.0181768   0.0455971
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0523674    0.0253073   0.0794275
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0433510    0.0220432   0.0646589
18-21 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         1                    0                  0.0112224   -0.0345617   0.0570065
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0005113   -0.0228113   0.0238339
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    0                  0.0252201   -0.0090158   0.0594561
18-21 months   ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   ki1114097-CONTENT          PERU                           1                    0                 -0.0069678   -0.0479267   0.0339911
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0149421   -0.0200866   0.0499708
18-21 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0179040   -0.0073302   0.0431382
18-21 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         1                    0                 -0.0022246   -0.0387629   0.0343136
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0099570   -0.0252929   0.0452068
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.0063201   -0.0346939   0.0473340
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.0077800   -0.0182287   0.0337887
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0267411   -0.0430858   0.0965680
21-24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           1                    0                 -0.0038982   -0.0383033   0.0305068
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0177188   -0.0424516   0.0778893
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0020397   -0.0550818   0.0591612
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0298874   -0.0198655   0.0796402
21-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0053476   -0.0520903   0.0413950
21-24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0213527   -0.0494537   0.0067483
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0246773   -0.0166496   0.0660042
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0046337   -0.0338544   0.0245870
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0037025   -0.0289189   0.0215140
21-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         1                    0                  0.0294488   -0.0071684   0.0660660
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0049644   -0.0419257   0.0319969
21-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                  0.0356417   -0.0030948   0.0743781
21-24 months   ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   ki1114097-CONTENT          PERU                           1                    0                  0.0553810   -0.0262798   0.1370417
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0108629   -0.0459205   0.0241948
21-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0127034   -0.0052478   0.0306546
21-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                  0.0195809   -0.0120909   0.0512527


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0305703    0.0127650    0.0483757
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0503797    0.0214109    0.0793484
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0206306   -0.0020120    0.0432732
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0298121    0.0067169    0.0529073
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                 0.0160154    0.0016247    0.0304061
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0234224    0.0042198    0.0426249
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0340418    0.0149640    0.0531196
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0328449   -0.0310161    0.0967059
0-3 months     ki1000108-IRC              INDIA                          0                    NA                 0.0624291    0.0351526    0.0897056
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.1197699    0.0801464    0.1593934
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.2146208    0.1032463    0.3259953
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0314647    0.0113856    0.0515438
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0368689    0.0228728    0.0508650
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0117692    0.0052383    0.0183000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0237062    0.0159905    0.0314219
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                 0.0428958    0.0299875    0.0558042
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0304031    0.0179096    0.0428967
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0684523    0.0025335    0.1343712
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                 0.0015761    0.0001950    0.0029573
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0440128    0.0396503    0.0483753
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0144391    0.0070945    0.0217837
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                 0.0246042    0.0214573    0.0277511
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0501953    0.0470247    0.0533658
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0513413    0.0332093    0.0694734
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0105301   -0.0013176    0.0223777
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0159705    0.0033947    0.0285464
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0208201    0.0070671    0.0345731
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0218210    0.0102254    0.0334167
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                 0.0184230    0.0049149    0.0319311
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0137593   -0.0018909    0.0294095
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0129503   -0.0029259    0.0288265
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0292327    0.0028601    0.0556054
3-6 months     ki1000108-IRC              INDIA                          0                    NA                 0.0037920   -0.0070471    0.0146311
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0342223    0.0097449    0.0586998
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0554189    0.0104048    0.1004329
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0187834    0.0117208    0.0258461
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0054863   -0.0057021    0.0166747
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0123368    0.0059979    0.0186757
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0141109    0.0065276    0.0216943
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0081424    0.0032003    0.0130846
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                 0.0064875    0.0007350    0.0122399
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0173035    0.0079723    0.0266347
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0533872    0.0259238    0.0808507
3-6 months     ki1114097-CONTENT          PERU                           0                    NA                 0.0132131    0.0051813    0.0212449
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                 0.0009685    0.0001506    0.0017865
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0063809    0.0032399    0.0095219
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0123220    0.0055113    0.0191327
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                 0.0095354    0.0073702    0.0117007
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0255034    0.0224212    0.0285857
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0283643    0.0197329    0.0369956
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0018089   -0.0090584    0.0054406
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0057483   -0.0160962    0.0045995
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0060968   -0.0063381    0.0185318
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0011473   -0.0100336    0.0077389
6-9 months     ki0047075b-MAL-ED          PERU                           0                    NA                -0.0030406   -0.0127091    0.0066280
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0047420   -0.0068796    0.0163636
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0071515   -0.0102482    0.0245512
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0032534   -0.0123699    0.0188767
6-9 months     ki1000108-IRC              INDIA                          0                    NA                 0.0068427   -0.0021689    0.0158542
6-9 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0212056    0.0023782    0.0400330
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0057448   -0.0255894    0.0370789
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0148341    0.0061253    0.0235429
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0230222    0.0072856    0.0387587
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0021754   -0.0060529    0.0104038
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0009850   -0.0027087    0.0046786
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0021407   -0.0029204    0.0072018
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0006956   -0.0039678    0.0053589
6-9 months     ki1101329-Keneba           GAMBIA                         0                    NA                 0.0038426   -0.0040946    0.0117798
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0211484    0.0079955    0.0343013
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0107734   -0.0001077    0.0216544
6-9 months     ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0031394   -0.0196151    0.0258939
6-9 months     ki1114097-CONTENT          PERU                           0                    NA                 0.0011152   -0.0044847    0.0067151
6-9 months     ki1119695-PROBIT           BELARUS                        0                    NA                 0.0003260   -0.0004188    0.0010709
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0055864    0.0027955    0.0083772
6-9 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0100832    0.0046776    0.0154889
6-9 months     ki1135781-COHORTS          INDIA                          0                    NA                 0.0045380    0.0026793    0.0063967
6-9 months     ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0208895    0.0083931    0.0333860
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0099236    0.0047754    0.0150718
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0080838   -0.0002555    0.0164232
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0008424   -0.0092369    0.0075521
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0038161   -0.0028055    0.0104378
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0004849   -0.0063219    0.0072918
9-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0082292   -0.0013263    0.0177848
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0021303   -0.0151978    0.0109372
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0004547   -0.0150564    0.0141469
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0156573    0.0010203    0.0302944
9-12 months    ki1000108-IRC              INDIA                          0                    NA                 0.0012587   -0.0040280    0.0065454
9-12 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0117293   -0.0014449    0.0249035
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0354744    0.0071487    0.0638001
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0047071   -0.0034442    0.0128583
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0144482   -0.0307913    0.0596877
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0032128   -0.0037673    0.0101929
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0019767   -0.0018598    0.0058132
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0048858    0.0000688    0.0097028
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0020221   -0.0062073    0.0021632
9-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0013426   -0.0070836    0.0043984
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0062848   -0.0045190    0.0170886
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0171095    0.0066608    0.0275581
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0016697   -0.0096827    0.0063433
9-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0240675    0.0024720    0.0456630
9-12 months    ki1114097-CONTENT          PERU                           0                    NA                 0.0085186    0.0024493    0.0145879
9-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0005242   -0.0002762    0.0013246
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0022646   -0.0002135    0.0047427
9-12 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0020540   -0.0033091    0.0074171
9-12 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.0002299   -0.0016183    0.0020781
9-12 months    ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0086542   -0.0075843    0.0248927
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0085348    0.0042501    0.0128196
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0052187   -0.0013709    0.0118084
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0023266   -0.0102029    0.0055496
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0017797   -0.0052542    0.0088137
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0037991   -0.0015926    0.0091908
12-15 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0033475   -0.0062643    0.0129592
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0087379   -0.0017851    0.0192609
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0002052   -0.0102169    0.0106273
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0025801   -0.0099438    0.0151041
12-15 months   ki1000108-IRC              INDIA                          0                    NA                 0.0028523   -0.0040672    0.0097718
12-15 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0205595    0.0089328    0.0321861
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0030191   -0.0406515    0.0346133
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0056003   -0.0015975    0.0127981
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0058508   -0.0356344    0.0239328
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0005428   -0.0064053    0.0053197
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0004816   -0.0035916    0.0026284
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0018514   -0.0023762    0.0060790
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0053498    0.0004029    0.0102967
12-15 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0018286   -0.0015324    0.0051895
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0078930   -0.0053442    0.0211301
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0041960   -0.0039586    0.0123506
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0068456   -0.0000139    0.0137052
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0214932    0.0036003    0.0393860
12-15 months   ki1114097-CONTENT          PERU                           0                    NA                -0.0013052   -0.0054848    0.0028744
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0008967   -0.0035429    0.0053362
12-15 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0063423    0.0008847    0.0118000
12-15 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0074319   -0.0416767    0.0268129
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0029227   -0.0007239    0.0065692
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0010817   -0.0045610    0.0067243
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0007838   -0.0071744    0.0056068
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0000685   -0.0052621    0.0053991
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0053390   -0.0103868   -0.0002912
15-18 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0056676   -0.0017224    0.0130576
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0001832   -0.0056411    0.0060075
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0044037   -0.0052329    0.0140403
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0082261   -0.0218947    0.0054425
15-18 months   ki1000108-IRC              INDIA                          0                    NA                 0.0041826   -0.0036840    0.0120492
15-18 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0077415   -0.0022100    0.0176931
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0045287   -0.0053081    0.0143655
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0043836   -0.0061189    0.0148861
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0063233    0.0000005    0.0126460
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0002751   -0.0026191    0.0031693
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0011959   -0.0023820    0.0047739
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0014095   -0.0021524    0.0049714
15-18 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0000538   -0.0036230    0.0035154
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0033775   -0.0048943    0.0116493
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0048246   -0.0024227    0.0120720
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0102480   -0.0059942    0.0264901
15-18 months   ki1114097-CONTENT          PERU                           0                    NA                 0.0056804   -0.0000389    0.0113997
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0002027   -0.0042126    0.0038072
15-18 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0055600   -0.0004444    0.0115644
15-18 months   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0082669   -0.0138940    0.0304278
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0042039    0.0008149    0.0075929
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0006232   -0.0058550    0.0046087
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0057151   -0.0062986    0.0177287
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0001155   -0.0049289    0.0051599
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0062928    0.0007494    0.0118362
18-21 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0005876   -0.0074853    0.0063101
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0000879   -0.0059821    0.0061579
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0051115   -0.0046329    0.0148560
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0150929    0.0022680    0.0279178
18-21 months   ki1000108-IRC              INDIA                          0                    NA                 0.0006315   -0.0034968    0.0047599
18-21 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0013303   -0.0084425    0.0111030
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0020485   -0.0033847    0.0074818
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0046870    0.0017384    0.0076356
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0053712    0.0022937    0.0084487
18-21 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0013715   -0.0029041    0.0056472
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0003852   -0.0035450    0.0043154
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0093187   -0.0044192    0.0230567
18-21 months   ki1114097-CONTENT          PERU                           0                    NA                -0.0006070   -0.0033680    0.0021540
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0016542   -0.0028373    0.0061457
18-21 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0034598   -0.0021557    0.0090753
18-21 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0015073   -0.0144457    0.0114310
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0002673   -0.0059207    0.0053861
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0007792   -0.0040658    0.0056242
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0012194   -0.0028751    0.0053138
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0030974   -0.0043971    0.0105919
21-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0004948   -0.0048881    0.0038984
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0014278   -0.0041878    0.0070434
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0002162   -0.0082855    0.0087178
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0057465   -0.0049558    0.0164489
21-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0003727   -0.0062796    0.0055341
21-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0063014   -0.0171748    0.0045720
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0017741   -0.0042282    0.0077764
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0008177   -0.0037558    0.0021204
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0002216   -0.0036049    0.0031617
21-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0026648   -0.0009058    0.0062354
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0010385   -0.0068857    0.0048086
21-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0159851   -0.0004579    0.0324281
21-24 months   ki1114097-CONTENT          PERU                           0                    NA                 0.0072870   -0.0050353    0.0196092
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0006199   -0.0054903    0.0042505
21-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0033907   -0.0010086    0.0077900
21-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0074088   -0.0036440    0.0184616

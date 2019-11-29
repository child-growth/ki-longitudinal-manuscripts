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

**Outcome Variable:** y_rate_len

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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0             202     243  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1              41     243  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0             152     168  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1              16     168  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          0             155     183  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          1              28     183  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          0             140     156  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          1              16     156  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           0             233     265  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           1              32     265  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             191     211  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              20     211  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             192     228  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              36     228  y_rate_len       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0              72      88  y_rate_len       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              16      88  y_rate_len       
0-3 months     ki1000108-IRC              INDIA                          0             334     377  y_rate_len       
0-3 months     ki1000108-IRC              INDIA                          1              43     377  y_rate_len       
0-3 months     ki1000109-EE               PAKISTAN                       0             170     303  y_rate_len       
0-3 months     ki1000109-EE               PAKISTAN                       1             133     303  y_rate_len       
0-3 months     ki1000109-ResPak           PAKISTAN                       0              55      80  y_rate_len       
0-3 months     ki1000109-ResPak           PAKISTAN                       1              25      80  y_rate_len       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0             918    1261  y_rate_len       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1             343    1261  y_rate_len       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0             477     566  y_rate_len       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1              89     566  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0             576     640  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1              64     640  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0             622     721  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              99     721  y_rate_len       
0-3 months     ki1101329-Keneba           GAMBIA                         0            1203    1276  y_rate_len       
0-3 months     ki1101329-Keneba           GAMBIA                         1              73    1276  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0             421     509  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1              88     509  y_rate_len       
0-3 months     ki1114097-CMIN             BANGLADESH                     0              26      43  y_rate_len       
0-3 months     ki1114097-CMIN             BANGLADESH                     1              17      43  y_rate_len       
0-3 months     ki1114097-CONTENT          PERU                           0              28      29  y_rate_len       
0-3 months     ki1114097-CONTENT          PERU                           1               1      29  y_rate_len       
0-3 months     ki1119695-PROBIT           BELARUS                        0           15192   15319  y_rate_len       
0-3 months     ki1119695-PROBIT           BELARUS                        1             127   15319  y_rate_len       
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0            7203    7982  y_rate_len       
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1             779    7982  y_rate_len       
0-3 months     ki1135781-COHORTS          GUATEMALA                      0             690     728  y_rate_len       
0-3 months     ki1135781-COHORTS          GUATEMALA                      1              38     728  y_rate_len       
0-3 months     ki1135781-COHORTS          INDIA                          0            5708    6465  y_rate_len       
0-3 months     ki1135781-COHORTS          INDIA                          1             757    6465  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0           13573   19879  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1            6306   19879  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0            1774    2517  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1             743    2517  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0             195     231  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1              36     231  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0             183     208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1              25     208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          0             195     230  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          1              35     230  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          0             206     233  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          1              27     233  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           0             233     267  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           1              34     267  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             218     243  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              25     243  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             201     239  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              38     239  y_rate_len       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0             244     307  y_rate_len       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              63     307  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          0             349     397  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          1              48     397  y_rate_len       
3-6 months     ki1000109-EE               PAKISTAN                       0             158     280  y_rate_len       
3-6 months     ki1000109-EE               PAKISTAN                       1             122     280  y_rate_len       
3-6 months     ki1000109-ResPak           PAKISTAN                       0             116     156  y_rate_len       
3-6 months     ki1000109-ResPak           PAKISTAN                       1              40     156  y_rate_len       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0             834    1124  y_rate_len       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1             290    1124  y_rate_len       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0             441     523  y_rate_len       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1              82     523  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0             537     598  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1              61     598  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0             598     695  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              97     695  y_rate_len       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1546    1661  y_rate_len       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             115    1661  y_rate_len       
3-6 months     ki1101329-Keneba           GAMBIA                         0            1261    1397  y_rate_len       
3-6 months     ki1101329-Keneba           GAMBIA                         1             136    1397  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0             391     469  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1              78     469  y_rate_len       
3-6 months     ki1114097-CMIN             BANGLADESH                     0             114     185  y_rate_len       
3-6 months     ki1114097-CMIN             BANGLADESH                     1              71     185  y_rate_len       
3-6 months     ki1114097-CONTENT          PERU                           0             196     214  y_rate_len       
3-6 months     ki1114097-CONTENT          PERU                           1              18     214  y_rate_len       
3-6 months     ki1119695-PROBIT           BELARUS                        0           13208   13309  y_rate_len       
3-6 months     ki1119695-PROBIT           BELARUS                        1             101   13309  y_rate_len       
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0            5554    6178  y_rate_len       
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1             624    6178  y_rate_len       
3-6 months     ki1135781-COHORTS          GUATEMALA                      0             693     805  y_rate_len       
3-6 months     ki1135781-COHORTS          GUATEMALA                      1             112     805  y_rate_len       
3-6 months     ki1135781-COHORTS          INDIA                          0            5754    6509  y_rate_len       
3-6 months     ki1135781-COHORTS          INDIA                          1             755    6509  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0            8744   12581  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1            3837   12581  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0            1325    1840  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1             515    1840  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0             189     224  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1              35     224  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0             174     198  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1              24     198  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          0             195     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          1              35     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          0             203     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          1              27     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           0             212     245  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           1              33     245  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             208     231  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              23     231  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             188     225  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              37     225  y_rate_len       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0             250     313  y_rate_len       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              63     313  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          0             358     407  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          1              49     407  y_rate_len       
6-9 months     ki1000109-EE               PAKISTAN                       0             173     304  y_rate_len       
6-9 months     ki1000109-EE               PAKISTAN                       1             131     304  y_rate_len       
6-9 months     ki1000109-ResPak           PAKISTAN                       0             106     143  y_rate_len       
6-9 months     ki1000109-ResPak           PAKISTAN                       1              37     143  y_rate_len       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0             836    1144  y_rate_len       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1             308    1144  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0             188     314  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1             126     314  y_rate_len       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0             420     498  y_rate_len       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     1              78     498  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0             506     565  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1              59     565  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0             595     688  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              93     688  y_rate_len       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1389    1488  y_rate_len       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              99    1488  y_rate_len       
6-9 months     ki1101329-Keneba           GAMBIA                         0             817     905  y_rate_len       
6-9 months     ki1101329-Keneba           GAMBIA                         1              88     905  y_rate_len       
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0             158     213  y_rate_len       
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1              55     213  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0             405     481  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1              76     481  y_rate_len       
6-9 months     ki1114097-CMIN             BANGLADESH                     0             107     177  y_rate_len       
6-9 months     ki1114097-CMIN             BANGLADESH                     1              70     177  y_rate_len       
6-9 months     ki1114097-CONTENT          PERU                           0             196     214  y_rate_len       
6-9 months     ki1114097-CONTENT          PERU                           1              18     214  y_rate_len       
6-9 months     ki1119695-PROBIT           BELARUS                        0           12336   12428  y_rate_len       
6-9 months     ki1119695-PROBIT           BELARUS                        1              92   12428  y_rate_len       
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       0            5347    5929  y_rate_len       
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1             582    5929  y_rate_len       
6-9 months     ki1135781-COHORTS          GUATEMALA                      0             694     822  y_rate_len       
6-9 months     ki1135781-COHORTS          GUATEMALA                      1             128     822  y_rate_len       
6-9 months     ki1135781-COHORTS          INDIA                          0            5262    5965  y_rate_len       
6-9 months     ki1135781-COHORTS          INDIA                          1             703    5965  y_rate_len       
6-9 months     ki1148112-LCNI-5           MALAWI                         0             358     564  y_rate_len       
6-9 months     ki1148112-LCNI-5           MALAWI                         1             206     564  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0            2234    3054  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1             820    3054  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0             188     225  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1              37     225  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0             171     194  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1              23     194  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          0             191     227  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          1              36     227  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          0             202     229  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          1              27     229  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           0             204     235  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           1              31     235  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             208     233  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              25     233  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             189     224  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              35     224  y_rate_len       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0             255     317  y_rate_len       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              62     317  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          0             352     400  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          1              48     400  y_rate_len       
9-12 months    ki1000109-EE               PAKISTAN                       0             185     326  y_rate_len       
9-12 months    ki1000109-EE               PAKISTAN                       1             141     326  y_rate_len       
9-12 months    ki1000109-ResPak           PAKISTAN                       0             102     140  y_rate_len       
9-12 months    ki1000109-ResPak           PAKISTAN                       1              38     140  y_rate_len       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0             831    1146  y_rate_len       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1             315    1146  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             188     311  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             123     311  y_rate_len       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0             406     482  y_rate_len       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     1              76     482  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0             506     566  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1              60     566  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0             581     674  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              93     674  y_rate_len       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1013    1081  y_rate_len       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              68    1081  y_rate_len       
9-12 months    ki1101329-Keneba           GAMBIA                         0             802     883  y_rate_len       
9-12 months    ki1101329-Keneba           GAMBIA                         1              81     883  y_rate_len       
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0             136     186  y_rate_len       
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1              50     186  y_rate_len       
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   0             875    1119  y_rate_len       
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   1             244    1119  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0             392     469  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1              77     469  y_rate_len       
9-12 months    ki1114097-CMIN             BANGLADESH                     0              96     160  y_rate_len       
9-12 months    ki1114097-CMIN             BANGLADESH                     1              64     160  y_rate_len       
9-12 months    ki1114097-CONTENT          PERU                           0             194     212  y_rate_len       
9-12 months    ki1114097-CONTENT          PERU                           1              18     212  y_rate_len       
9-12 months    ki1119695-PROBIT           BELARUS                        0           12586   12682  y_rate_len       
9-12 months    ki1119695-PROBIT           BELARUS                        1              96   12682  y_rate_len       
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0            5353    5933  y_rate_len       
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1             580    5933  y_rate_len       
9-12 months    ki1135781-COHORTS          GUATEMALA                      0             760     931  y_rate_len       
9-12 months    ki1135781-COHORTS          GUATEMALA                      1             171     931  y_rate_len       
9-12 months    ki1135781-COHORTS          INDIA                          0            4532    5135  y_rate_len       
9-12 months    ki1135781-COHORTS          INDIA                          1             603    5135  y_rate_len       
9-12 months    ki1148112-LCNI-5           MALAWI                         0             236     386  y_rate_len       
9-12 months    ki1148112-LCNI-5           MALAWI                         1             150     386  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0            2554    3501  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1             947    3501  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0             179     212  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1              33     212  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0             162     184  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1              22     184  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          0             190     226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          1              36     226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          0             203     230  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          1              27     230  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           0             195     224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           1              29     224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             203     228  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              25     228  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             191     226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              35     226  y_rate_len       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0             260     329  y_rate_len       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              69     329  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          0             343     390  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          1              47     390  y_rate_len       
12-15 months   ki1000109-EE               PAKISTAN                       0             164     297  y_rate_len       
12-15 months   ki1000109-EE               PAKISTAN                       1             133     297  y_rate_len       
12-15 months   ki1000109-ResPak           PAKISTAN                       0              62      92  y_rate_len       
12-15 months   ki1000109-ResPak           PAKISTAN                       1              30      92  y_rate_len       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0             852    1168  y_rate_len       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1             316    1168  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0             185     303  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1             118     303  y_rate_len       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0             387     461  y_rate_len       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     1              74     461  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0             480     532  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1              52     532  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0             565     660  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              95     660  y_rate_len       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             740     791  y_rate_len       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              51     791  y_rate_len       
12-15 months   ki1101329-Keneba           GAMBIA                         0            1219    1339  y_rate_len       
12-15 months   ki1101329-Keneba           GAMBIA                         1             120    1339  y_rate_len       
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      0              72      97  y_rate_len       
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1              25      97  y_rate_len       
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0             773     978  y_rate_len       
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1             205     978  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0             388     469  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1              81     469  y_rate_len       
12-15 months   ki1114097-CMIN             BANGLADESH                     0              95     160  y_rate_len       
12-15 months   ki1114097-CMIN             BANGLADESH                     1              65     160  y_rate_len       
12-15 months   ki1114097-CONTENT          PERU                           0             181     199  y_rate_len       
12-15 months   ki1114097-CONTENT          PERU                           1              18     199  y_rate_len       
12-15 months   ki1119695-PROBIT           BELARUS                        0             998    1001  y_rate_len       
12-15 months   ki1119695-PROBIT           BELARUS                        1               3    1001  y_rate_len       
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            2249    2548  y_rate_len       
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             299    2548  y_rate_len       
12-15 months   ki1135781-COHORTS          GUATEMALA                      0             685     885  y_rate_len       
12-15 months   ki1135781-COHORTS          GUATEMALA                      1             200     885  y_rate_len       
12-15 months   ki1148112-LCNI-5           MALAWI                         0              74     127  y_rate_len       
12-15 months   ki1148112-LCNI-5           MALAWI                         1              53     127  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0            2556    3549  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1             993    3549  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0             179     212  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1              33     212  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0             157     175  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1              18     175  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          0             190     226  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          1              36     226  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          0             200     227  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          1              27     227  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           0             184     213  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           1              29     213  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             202     225  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              23     225  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             182     217  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              35     217  y_rate_len       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0             252     321  y_rate_len       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              69     321  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          0             337     382  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          1              45     382  y_rate_len       
15-18 months   ki1000109-EE               PAKISTAN                       0             159     278  y_rate_len       
15-18 months   ki1000109-EE               PAKISTAN                       1             119     278  y_rate_len       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0             854    1171  y_rate_len       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1             317    1171  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0             177     291  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1             114     291  y_rate_len       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0             372     449  y_rate_len       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     1              77     449  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0             478     528  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1              50     528  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0             517     604  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              87     604  y_rate_len       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             619     664  y_rate_len       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              45     664  y_rate_len       
15-18 months   ki1101329-Keneba           GAMBIA                         0            1241    1359  y_rate_len       
15-18 months   ki1101329-Keneba           GAMBIA                         1             118    1359  y_rate_len       
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0             808    1021  y_rate_len       
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1             213    1021  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0             398     480  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1              82     480  y_rate_len       
15-18 months   ki1114097-CMIN             BANGLADESH                     0              97     163  y_rate_len       
15-18 months   ki1114097-CMIN             BANGLADESH                     1              66     163  y_rate_len       
15-18 months   ki1114097-CONTENT          PERU                           0             172     189  y_rate_len       
15-18 months   ki1114097-CONTENT          PERU                           1              17     189  y_rate_len       
15-18 months   ki1119695-PROBIT           BELARUS                        0             274     275  y_rate_len       
15-18 months   ki1119695-PROBIT           BELARUS                        1               1     275  y_rate_len       
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            1776    2036  y_rate_len       
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             260    2036  y_rate_len       
15-18 months   ki1135781-COHORTS          GUATEMALA                      0             618     788  y_rate_len       
15-18 months   ki1135781-COHORTS          GUATEMALA                      1             170     788  y_rate_len       
15-18 months   ki1148112-LCNI-5           MALAWI                         0              71     120  y_rate_len       
15-18 months   ki1148112-LCNI-5           MALAWI                         1              49     120  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0            2543    3550  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1            1007    3550  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0             176     209  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1              33     209  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0             149     167  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1              18     167  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          0             190     226  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          1              36     226  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          0             200     227  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          1              27     227  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           0             177     202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           1              25     202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             209     233  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              24     233  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             172     204  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              32     204  y_rate_len       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0             239     305  y_rate_len       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              66     305  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          0             332     379  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          1              47     379  y_rate_len       
18-21 months   ki1000109-EE               PAKISTAN                       0             159     254  y_rate_len       
18-21 months   ki1000109-EE               PAKISTAN                       1              95     254  y_rate_len       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0             350     422  y_rate_len       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     1              72     422  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0             487     541  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1              54     541  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0             472     546  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              74     546  y_rate_len       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               9       9  y_rate_len       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       9  y_rate_len       
18-21 months   ki1101329-Keneba           GAMBIA                         0            1217    1348  y_rate_len       
18-21 months   ki1101329-Keneba           GAMBIA                         1             131    1348  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0             370     445  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1              75     445  y_rate_len       
18-21 months   ki1114097-CMIN             BANGLADESH                     0             100     165  y_rate_len       
18-21 months   ki1114097-CMIN             BANGLADESH                     1              65     165  y_rate_len       
18-21 months   ki1114097-CONTENT          PERU                           0             168     183  y_rate_len       
18-21 months   ki1114097-CONTENT          PERU                           1              15     183  y_rate_len       
18-21 months   ki1119695-PROBIT           BELARUS                        0             215     218  y_rate_len       
18-21 months   ki1119695-PROBIT           BELARUS                        1               3     218  y_rate_len       
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            1386    1595  y_rate_len       
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             209    1595  y_rate_len       
18-21 months   ki1135781-COHORTS          GUATEMALA                      0             607     778  y_rate_len       
18-21 months   ki1135781-COHORTS          GUATEMALA                      1             171     778  y_rate_len       
18-21 months   ki1148112-LCNI-5           MALAWI                         0             313     477  y_rate_len       
18-21 months   ki1148112-LCNI-5           MALAWI                         1             164     477  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0             175     207  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1              32     207  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0             146     165  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1              19     165  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          0             190     226  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          1              36     226  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          0             200     227  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          1              27     227  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           0             165     189  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           1              24     189  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             211     235  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              24     235  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             173     204  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              31     204  y_rate_len       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0             242     308  y_rate_len       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              66     308  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          0             340     389  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          1              49     389  y_rate_len       
21-24 months   ki1000109-EE               PAKISTAN                       0              65     106  y_rate_len       
21-24 months   ki1000109-EE               PAKISTAN                       1              41     106  y_rate_len       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0             342     411  y_rate_len       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     1              69     411  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0             423     471  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1              48     471  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0             422     490  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              68     490  y_rate_len       
21-24 months   ki1101329-Keneba           GAMBIA                         0            1090    1205  y_rate_len       
21-24 months   ki1101329-Keneba           GAMBIA                         1             115    1205  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0             286     342  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1              56     342  y_rate_len       
21-24 months   ki1114097-CMIN             BANGLADESH                     0              78     133  y_rate_len       
21-24 months   ki1114097-CMIN             BANGLADESH                     1              55     133  y_rate_len       
21-24 months   ki1114097-CONTENT          PERU                           0              33      38  y_rate_len       
21-24 months   ki1114097-CONTENT          PERU                           1               5      38  y_rate_len       
21-24 months   ki1119695-PROBIT           BELARUS                        0             207     209  y_rate_len       
21-24 months   ki1119695-PROBIT           BELARUS                        1               2     209  y_rate_len       
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            1006    1169  y_rate_len       
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             163    1169  y_rate_len       
21-24 months   ki1135781-COHORTS          GUATEMALA                      0             651     862  y_rate_len       
21-24 months   ki1135781-COHORTS          GUATEMALA                      1             211     862  y_rate_len       
21-24 months   ki1148112-LCNI-5           MALAWI                         0             266     410  y_rate_len       
21-24 months   ki1148112-LCNI-5           MALAWI                         1             144     410  y_rate_len       


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
![](/tmp/e579b5dc-264d-4436-a70b-862e32fdfb05/9e58cd4a-84d4-4101-8ebb-86969d0281bb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e579b5dc-264d-4436-a70b-862e32fdfb05/9e58cd4a-84d4-4101-8ebb-86969d0281bb/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e579b5dc-264d-4436-a70b-862e32fdfb05/9e58cd4a-84d4-4101-8ebb-86969d0281bb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                3.2989281   3.2303378   3.3675183
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                3.5375643   3.3432029   3.7319257
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                3.7131548   3.6037703   3.8225393
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                4.5781662   4.2373654   4.9189670
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                3.3201324   3.2149678   3.4252971
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                3.5161087   3.2528900   3.7793275
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                3.5685543   3.4776520   3.6594566
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                4.3874701   3.9946497   4.7802905
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                3.0327918   2.9623675   3.1032161
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                3.2971143   3.0805808   3.5136479
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                3.1436007   3.0448819   3.2423194
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                3.7932438   3.4388633   4.1476243
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                3.2224508   3.1387200   3.3061815
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                3.5177561   3.3254326   3.7100796
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                3.4147895   3.1924327   3.6371463
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                3.7859396   3.1264774   4.4454018
0-3 months     ki1000108-IRC              INDIA                          0                    NA                3.0249826   2.9139712   3.1359941
0-3 months     ki1000108-IRC              INDIA                          1                    NA                4.0344973   3.6701064   4.3988881
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                2.8924467   2.7963857   2.9885076
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                3.3232065   3.1901767   3.4562364
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                2.5794620   2.2825444   2.8763796
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                3.8109180   3.3666510   4.2551850
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                3.3156358   3.2578022   3.3734694
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                3.4504329   3.3371115   3.5637543
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                3.0523627   2.9971474   3.1075779
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                3.4443698   3.2920660   3.5966735
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                3.2415469   3.2030736   3.2800203
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.3946168   3.2657689   3.5234647
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                3.0971363   3.0584094   3.1358631
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                3.3010702   3.2049206   3.3972198
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                3.0341360   2.9911169   3.0771552
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                4.4133008   4.1028872   4.7237144
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                3.5582859   3.5026652   3.6139066
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                3.8096328   3.6866762   3.9325894
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    NA                3.3386518   3.1811674   3.4961362
0-3 months     ki1114097-CMIN             BANGLADESH                     1                    NA                3.4739173   3.2141886   3.7336459
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                2.8110579   2.6956026   2.9265132
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                3.2077166   3.1249303   3.2905028
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                3.2614508   3.2405088   3.2823927
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                4.0352758   3.9713576   4.0991940
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                2.5619687   2.5186311   2.6053063
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                3.0080802   2.7739051   3.2422552
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                3.4744326   3.4599581   3.4889072
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                3.7712714   3.7267887   3.8157541
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                3.5974503   3.5860639   3.6088366
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                3.8101273   3.7931600   3.8270946
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                2.9346064   2.8714315   2.9977814
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                3.1882432   3.0941543   3.2823321
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                1.9150258   1.8616058   1.9684458
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                2.0028963   1.8437396   2.1620530
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                2.1183418   2.0325773   2.2041064
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                2.3853282   2.1901927   2.5804638
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                1.8506737   1.7821006   1.9192469
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                2.1080798   1.9678661   2.2482936
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                1.9211327   1.8628953   1.9793701
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                2.2907313   2.1409406   2.4405220
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                1.9837618   1.9137749   2.0537486
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                2.2338879   2.0350928   2.4326831
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                1.9407041   1.8572686   2.0241396
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                2.2642497   1.9893768   2.5391227
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8101573   1.7380544   1.8822603
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                1.9295656   1.7238798   2.1352514
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.7510476   1.6394701   1.8626251
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.9569934   1.7337664   2.1802204
3-6 months     ki1000108-IRC              INDIA                          0                    NA                1.8786127   1.8098540   1.9473715
3-6 months     ki1000108-IRC              INDIA                          1                    NA                1.8781118   1.6901474   2.0660763
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                2.0479780   1.9724878   2.1234681
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                2.1563834   2.0650313   2.2477354
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                1.9586360   1.8093550   2.1079170
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                2.4431919   2.1138797   2.7725041
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                1.9132359   1.8583965   1.9680753
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                2.0300601   1.9753453   2.0847749
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                1.8316271   1.7807482   1.8825059
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                1.8561909   1.7152181   1.9971637
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.9430174   1.9080936   1.9779412
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                2.1740218   2.0579708   2.2900728
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                1.9836085   1.9454241   2.0217930
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                2.1497046   2.0428081   2.2566011
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.7810071   1.7440586   1.8179555
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.9736977   1.8273475   2.1200479
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                1.9840811   1.9422167   2.0259455
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                2.0644905   1.9499997   2.1789814
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.6812014   1.6389883   1.7234146
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.8471352   1.7444745   1.9497960
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                1.8641872   1.7821079   1.9462665
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                2.1131084   1.9920386   2.2341783
3-6 months     ki1114097-CONTENT          PERU                           0                    NA                2.0602505   2.0103832   2.1101178
3-6 months     ki1114097-CONTENT          PERU                           1                    NA                2.3682163   2.1950910   2.5413416
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                2.0898204   2.0477546   2.1318863
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                2.3204593   2.2700277   2.3708909
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                1.9660526   1.9453423   1.9867629
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                2.0565985   1.9935748   2.1196221
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                1.7444613   1.7124290   1.7764936
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                1.8725149   1.7769724   1.9680575
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                1.8603053   1.8476168   1.8729937
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                1.9762909   1.9381418   2.0144399
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                1.8811714   1.8695681   1.8927747
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                2.0084438   1.9901119   2.0267757
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.8540541   1.8192253   1.8888830
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                2.0179858   1.9619989   2.0739727
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                1.2594260   1.2158010   1.3030509
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.2069852   1.1075021   1.3064683
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                1.5016048   1.4129604   1.5902492
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.3443254   1.1693576   1.5192933
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    NA                1.2377519   1.1848733   1.2906305
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    NA                1.2879982   1.1081215   1.4678749
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                1.3632017   1.3180557   1.4083477
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                1.3088382   1.1234890   1.4941875
6-9 months     ki0047075b-MAL-ED          PERU                           0                    NA                1.3321470   1.2740923   1.3902016
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                1.2351689   1.0734408   1.3968969
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                1.3667739   1.3018445   1.4317033
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.4432201   1.1784639   1.7079763
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                1.1778441   1.0966822   1.2590060
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                1.2413345   1.0075592   1.4751097
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.2177778   1.1262790   1.3092765
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.1910011   1.0488883   1.3331139
6-9 months     ki1000108-IRC              INDIA                          0                    NA                1.3624356   1.3113949   1.4134763
6-9 months     ki1000108-IRC              INDIA                          1                    NA                1.4492931   1.3019090   1.5966771
6-9 months     ki1000109-EE               PAKISTAN                       0                    NA                1.1572089   1.0994810   1.2149368
6-9 months     ki1000109-EE               PAKISTAN                       1                    NA                1.2052462   1.1267203   1.2837720
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    NA                1.4343616   1.3201490   1.5485741
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    NA                1.3955388   1.1484303   1.6426472
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                1.1951274   1.1622267   1.2280282
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                1.2743903   1.2262584   1.3225222
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                1.1135744   1.0662235   1.1609252
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                1.1843002   1.1107257   1.2578747
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                1.2591383   1.2154391   1.3028375
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                1.2413856   1.1282821   1.3544890
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.2838000   1.2569217   1.3106783
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.2738368   1.1925991   1.3550746
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                1.3303344   1.2987541   1.3619146
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.3250180   1.2399492   1.4100867
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.3246873   1.2871573   1.3622172
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.3013631   1.1412261   1.4615001
6-9 months     ki1101329-Keneba           GAMBIA                         0                    NA                1.4013688   1.3478739   1.4548636
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                1.4505295   1.2647256   1.6363333
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                1.1391609   1.0911361   1.1871857
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                1.2542683   1.1561447   1.3523920
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.2979545   1.2598609   1.3360481
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.4247982   1.2629293   1.5866670
6-9 months     ki1114097-CMIN             BANGLADESH                     0                    NA                1.2700349   1.1970145   1.3430552
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    NA                1.2675793   1.1611708   1.3739878
6-9 months     ki1114097-CONTENT          PERU                           0                    NA                1.3994013   1.3491100   1.4496925
6-9 months     ki1114097-CONTENT          PERU                           1                    NA                1.3692318   1.2311598   1.5073039
6-9 months     ki1119695-PROBIT           BELARUS                        0                    NA                1.5762229   1.5446549   1.6077909
6-9 months     ki1119695-PROBIT           BELARUS                        1                    NA                1.6556982   1.5957451   1.7156513
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                1.3378645   1.3177914   1.3579377
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                1.4326425   1.3720798   1.4932052
6-9 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                1.0931116   1.0637655   1.1224576
6-9 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                1.1875636   1.1162888   1.2588384
6-9 months     ki1135781-COHORTS          INDIA                          0                    NA                1.1910494   1.1794862   1.2026126
6-9 months     ki1135781-COHORTS          INDIA                          1                    NA                1.2275600   1.1942872   1.2608329
6-9 months     ki1148112-LCNI-5           MALAWI                         0                    NA                1.4374491   1.3924394   1.4824588
6-9 months     ki1148112-LCNI-5           MALAWI                         1                    NA                1.5036743   1.4409348   1.5664138
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.3147498   1.2907506   1.3387489
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.3505712   1.3127963   1.3883462
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.9793237   0.9381905   1.0204569
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.0505189   0.9371257   1.1639120
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                1.3048695   1.2235130   1.3862259
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.2542880   1.0887158   1.4198602
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.9766689   0.9343281   1.0190097
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                1.0079087   0.9188206   1.0969969
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                1.0926815   1.0497568   1.1356062
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                1.0038866   0.8581522   1.1496209
9-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                1.0872996   1.0337125   1.1408866
9-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                1.1749048   1.0063983   1.3434112
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                1.0245210   0.9589896   1.0900525
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.9030710   0.6828653   1.1232767
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8280374   0.7390664   0.9170085
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7704776   0.5805301   0.9604251
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.8763819   0.8017144   0.9510493
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.0516360   0.8772358   1.2260362
9-12 months    ki1000108-IRC              INDIA                          0                    NA                1.1260471   1.0829148   1.1691793
9-12 months    ki1000108-IRC              INDIA                          1                    NA                1.1101659   1.0232272   1.1971047
9-12 months    ki1000109-EE               PAKISTAN                       0                    NA                0.9078088   0.8633270   0.9522907
9-12 months    ki1000109-EE               PAKISTAN                       1                    NA                0.9187125   0.8613325   0.9760925
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                1.1152446   0.9630697   1.2674194
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                1.4102591   1.2357374   1.5847808
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                1.0019026   0.9665033   1.0373019
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.9918344   0.9339794   1.0496894
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.8077045   0.6331416   0.9822675
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.8516464   0.6249745   1.0783183
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                1.0894516   1.0520231   1.1268802
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                1.0716315   0.9748199   1.1684431
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.0499320   1.0213792   1.0784849
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.0469343   0.9636767   1.1301918
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                1.1174336   1.0895891   1.1452782
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.1706789   1.0925763   1.2487815
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.0945886   1.0596547   1.1295225
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8669254   0.6784299   1.0554209
9-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.9878066   0.9435020   1.0321112
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.9151621   0.7674243   1.0628999
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                1.0424572   0.9994056   1.0855087
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                1.0545086   0.9658902   1.1431270
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                1.0710236   1.0338909   1.1081564
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                1.1715951   1.0665736   1.2766165
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.0074435   0.9748337   1.0400533
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.9633391   0.8404937   1.0861844
9-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.9233641   0.8504832   0.9962449
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                1.0274205   0.9233057   1.1315353
9-12 months    ki1114097-CONTENT          PERU                           0                    NA                1.1894684   1.1476011   1.2313357
9-12 months    ki1114097-CONTENT          PERU                           1                    NA                1.3744408   1.2346178   1.5142637
9-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                1.3714610   1.3194286   1.4234933
9-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                1.4228489   1.3663914   1.4793064
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                1.0788895   1.0600927   1.0976864
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                1.1031088   1.0450606   1.1611570
9-12 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.9583080   0.9322772   0.9843389
9-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.9170678   0.8517303   0.9824053
9-12 months    ki1135781-COHORTS          INDIA                          0                    NA                1.0041739   0.9917058   1.0166420
9-12 months    ki1135781-COHORTS          INDIA                          1                    NA                0.9516761   0.9140818   0.9892704
9-12 months    ki1148112-LCNI-5           MALAWI                         0                    NA                1.1030694   1.0442098   1.1619289
9-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                1.1017716   1.0194208   1.1841224
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.0645928   1.0446329   1.0845527
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.0909744   1.0561248   1.1258240
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.9078351   0.8637748   0.9518953
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.9588668   0.8566754   1.0610582
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                1.1531010   1.0897688   1.2164332
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.0310147   0.8420906   1.2199389
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.9109563   0.8686871   0.9532255
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.9076184   0.7987435   1.0164934
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.9482138   0.9054789   0.9909486
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.9537814   0.8491875   1.0583754
12-15 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.8877233   0.8409478   0.9344989
12-15 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.9221020   0.7314416   1.1127625
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.9021378   0.8433849   0.9608907
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.0495731   0.8626243   1.2365220
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8639948   0.7930593   0.9349302
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8418393   0.6801033   1.0035754
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.8535833   0.7685351   0.9386316
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.8776475   0.7639304   0.9913646
12-15 months   ki1000108-IRC              INDIA                          0                    NA                0.9517856   0.9081919   0.9953792
12-15 months   ki1000108-IRC              INDIA                          1                    NA                0.9657341   0.8204009   1.1110672
12-15 months   ki1000109-EE               PAKISTAN                       0                    NA                0.9791269   0.9336922   1.0245617
12-15 months   ki1000109-EE               PAKISTAN                       1                    NA                1.0433673   0.9970455   1.0896890
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    NA                1.2971832   1.0825948   1.5117716
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    NA                1.2750776   1.0987656   1.4513895
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.8337646   0.7929293   0.8745998
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.8365122   0.7726267   0.9003978
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                1.0703648   0.9639388   1.1767908
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.9642135   0.8049013   1.1235257
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.7354608   0.6847495   0.7861722
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.6660658   0.5873914   0.7447403
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.9651206   0.9373517   0.9928895
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.9125871   0.8313630   0.9938112
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.9720340   0.9460713   0.9979968
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.9592566   0.8844640   1.0340492
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9217726   0.8843423   0.9592029
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0788529   0.8439963   1.3137095
12-15 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.9368195   0.9044741   0.9691648
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.9503495   0.8537881   1.0469109
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                1.0095183   0.9371258   1.0819107
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.9965168   0.8861356   1.1068981
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.9723447   0.9171948   1.0274946
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.9390835   0.8637458   1.0144212
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.8679032   0.8401151   0.8956914
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.9200168   0.8182205   1.0218130
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.8357915   0.7619319   0.9096511
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.9258783   0.8433271   1.0084294
12-15 months   ki1114097-CONTENT          PERU                           0                    NA                0.9376942   0.8923486   0.9830398
12-15 months   ki1114097-CONTENT          PERU                           1                    NA                0.8467579   0.7270778   0.9664381
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.9220859   0.8940911   0.9500807
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.9098127   0.8191052   1.0005202
12-15 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7845583   0.7542618   0.8148547
12-15 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7918837   0.7362638   0.8475036
12-15 months   ki1148112-LCNI-5           MALAWI                         0                    NA                1.0002937   0.8877044   1.1128830
12-15 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.9163730   0.7415404   1.0912056
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.9484808   0.9296146   0.9673470
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.9228002   0.8946275   0.9509729
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.8281065   0.7876649   0.8685481
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.8047845   0.7136238   0.8959452
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                1.0094329   0.9460681   1.0727976
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.9576103   0.8052736   1.1099470
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.8523715   0.8122630   0.8924800
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.8096159   0.7240007   0.8952310
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.8576083   0.8126822   0.9025344
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.7048510   0.6088336   0.8008683
15-18 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.8449499   0.8006540   0.8892458
15-18 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.9153147   0.7778680   1.0527614
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.8909258   0.8341863   0.9476654
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.8464866   0.7309166   0.9620565
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6817125   0.6145362   0.7488888
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7156841   0.5641200   0.8672482
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7619735   0.6885332   0.8354138
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6535845   0.5216734   0.7854955
15-18 months   ki1000108-IRC              INDIA                          0                    NA                0.8520727   0.8135494   0.8905960
15-18 months   ki1000108-IRC              INDIA                          1                    NA                0.9564151   0.7773200   1.1355102
15-18 months   ki1000109-EE               PAKISTAN                       0                    NA                0.8425020   0.8001368   0.8848672
15-18 months   ki1000109-EE               PAKISTAN                       1                    NA                0.8309300   0.7805262   0.8813339
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.9073650   0.8632665   0.9514634
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.8921966   0.8235931   0.9608001
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.8071967   0.7595908   0.8548026
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.7768445   0.7198366   0.8338524
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.7661261   0.7211823   0.8110698
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.7918312   0.7022485   0.8814140
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.8600830   0.8348010   0.8853649
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8164399   0.7375568   0.8953229
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.9217472   0.8969760   0.9465184
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.9015661   0.8398776   0.9632545
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9389920   0.8949530   0.9830310
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9121342   0.7765449   1.0477235
15-18 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.8814704   0.8491791   0.9137616
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.8362235   0.7190403   0.9534067
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.9312741   0.8967149   0.9658333
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.8881757   0.7650338   1.0113177
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.7505305   0.7153442   0.7857168
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.7863237   0.6699955   0.9026519
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.7264454   0.6608485   0.7920424
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.7483320   0.6618128   0.8348513
15-18 months   ki1114097-CONTENT          PERU                           0                    NA                0.9759048   0.9279894   1.0238201
15-18 months   ki1114097-CONTENT          PERU                           1                    NA                1.0841628   0.9485744   1.2197512
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.8035150   0.7712520   0.8357780
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7648964   0.6837687   0.8460240
15-18 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7421966   0.7089183   0.7754749
15-18 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7611636   0.6941807   0.8281464
15-18 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.8354021   0.7309471   0.9398571
15-18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.8001556   0.7015463   0.8987648
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.8630058   0.8439480   0.8820636
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.8522529   0.8243463   0.8801595
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.8215468   0.7841526   0.8589409
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.7678816   0.6716195   0.8641437
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.9054780   0.8363155   0.9746406
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.0306744   0.5850536   1.4762952
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.8845598   0.8462089   0.9229107
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.8433923   0.7523920   0.9343925
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.8090027   0.7691322   0.8488731
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.8838027   0.7533191   1.0142864
18-21 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.8459178   0.7992813   0.8925542
18-21 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.8561697   0.7030269   1.0093125
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.7824792   0.7230397   0.8419187
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.7628274   0.6106169   0.9150379
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7358117   0.6618786   0.8097449
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7882782   0.6009968   0.9755597
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6625687   0.5914304   0.7337071
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.8396332   0.6973356   0.9819308
18-21 months   ki1000108-IRC              INDIA                          0                    NA                0.7619574   0.7197143   0.8042005
18-21 months   ki1000108-IRC              INDIA                          1                    NA                0.7370346   0.6557745   0.8182947
18-21 months   ki1000109-EE               PAKISTAN                       0                    NA                0.7333896   0.6958858   0.7708933
18-21 months   ki1000109-EE               PAKISTAN                       1                    NA                0.6794815   0.6105956   0.7483673
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.7346335   0.6944469   0.7748201
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.7070954   0.6195612   0.7946295
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.8299375   0.8047112   0.8551638
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.9217121   0.8472622   0.9961620
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.7888801   0.7635146   0.8142456
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.8639162   0.8075046   0.9203279
18-21 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.8185225   0.7837416   0.8533034
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.7814710   0.6543739   0.9085682
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.9101887   0.8709944   0.9493831
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8772078   0.8223084   0.9321072
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.7942836   0.7294510   0.8591162
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.8280088   0.7529905   0.9030272
18-21 months   ki1114097-CONTENT          PERU                           0                    NA                0.9206306   0.8738273   0.9674339
18-21 months   ki1114097-CONTENT          PERU                           1                    NA                0.8448308   0.7255893   0.9640723
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6806321   0.6440058   0.7172584
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.6887227   0.5960954   0.7813500
18-21 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7483117   0.7165366   0.7800868
18-21 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7521408   0.6862500   0.8180316
18-21 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.8474742   0.7945744   0.9003740
18-21 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.7642200   0.6715320   0.8569080
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.7748806   0.7365975   0.8131637
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.7413826   0.6404858   0.8422795
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.7971663   0.7493173   0.8450153
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.7896194   0.6704765   0.9087624
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.8287817   0.7940937   0.8634697
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.8076305   0.7438644   0.8713965
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.7774362   0.7383338   0.8165385
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.7417390   0.5502123   0.9332658
21-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.7694866   0.7183301   0.8206432
21-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.7001398   0.5925053   0.8077742
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.8355784   0.7804531   0.8907037
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.8713904   0.6604058   1.0823749
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7313240   0.6603490   0.8022989
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7245870   0.5695594   0.8796145
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6896569   0.6164360   0.7628777
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7585118   0.6360824   0.8809413
21-24 months   ki1000108-IRC              INDIA                          0                    NA                0.7148583   0.6713775   0.7583391
21-24 months   ki1000108-IRC              INDIA                          1                    NA                0.6442171   0.5210309   0.7674033
21-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.6834880   0.6378084   0.7291676
21-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.5894104   0.5194478   0.6593730
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.7216338   0.6838314   0.7594362
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.7228603   0.6187086   0.8270119
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.7672024   0.7403005   0.7941044
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.7286810   0.6540507   0.8033113
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.8042136   0.7777693   0.8306579
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.7787718   0.7116244   0.8459193
21-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.7142578   0.6790927   0.7494228
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.7442610   0.6435097   0.8450123
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.8040375   0.7522524   0.8558225
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.7644692   0.6768349   0.8521036
21-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.7174473   0.6424660   0.7924287
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.7518640   0.6578071   0.8459210
21-24 months   ki1114097-CONTENT          PERU                           0                    NA                0.9210196   0.8365278   1.0055113
21-24 months   ki1114097-CONTENT          PERU                           1                    NA                1.0278840   0.7878904   1.2678777
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6988389   0.6575629   0.7401150
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.6341763   0.5338326   0.7345200
21-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.6758393   0.6488832   0.7027954
21-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.6812418   0.6347831   0.7277005
21-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.7581228   0.6980394   0.8182061
21-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.7388738   0.6639615   0.8137861


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.3391231   3.2734666   3.4047796
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                3.7987014   3.6882619   3.9091408
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.3482250   3.2503342   3.4461159
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.6234175   3.5314103   3.7154247
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.0519536   2.9854854   3.1184219
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.1817712   3.0847973   3.2787451
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2644991   3.1874675   3.3415308
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                3.4601875   3.2440906   3.6762845
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1382493   3.0275242   3.2489743
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                3.0775986   2.9949164   3.1602807
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                3.0203213   2.7415636   3.2990789
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.3515606   3.2984055   3.4047158
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                3.1100116   3.0566021   3.1634210
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                3.1094185   3.0623536   3.1564834
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                3.5989683   3.5479067   3.6500300
0-3 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                3.4261247   3.2881156   3.5641338
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.8134611   2.7000362   2.9268861
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3370617   3.3165207   3.3576028
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.5828382   2.5396287   2.6260477
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.5089109   3.4948295   3.5229924
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.6645220   3.6542864   3.6747577
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                3.0073628   2.9543803   3.0603453
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9276407   1.8774065   1.9778750
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.1460815   2.0668679   2.2252951
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8922980   1.8286780   1.9559180
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9644601   1.9083113   2.0206088
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0156821   1.9494666   2.0818976
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9704262   1.8897530   2.0510994
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.0947237   2.0366412   2.1528063
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                2.0648890   1.9235221   2.2062560
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9406419   1.8967379   1.9845458
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7956732   1.7598168   1.8315297
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.9931660   1.9537919   2.0325400
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.7095685   1.6702436   1.7488934
3-6 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                1.9478477   1.8775639   2.0181315
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                2.0841841   2.0362519   2.1321163
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.0914863   2.0503474   2.1326251
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9753863   1.9557273   1.9950453
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.7616932   1.7309393   1.7924472
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8736888   1.8616349   1.8857427
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9202003   1.9097349   1.9306657
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.8983676   1.8684335   1.9283018
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.4831159   1.4026580   1.5635738
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.2462236   1.1943701   1.2980772
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.3571408   1.3129874   1.4012943
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                1.3199965   1.2656612   1.3743319
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.3769258   1.3128158   1.4410357
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1907556   1.1129385   1.2685726
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.2173381   1.1398153   1.2948610
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                1.3724009   1.3237927   1.4210091
6-9 months     ki1000109-EE               PAKISTAN                       NA                   NA                1.1779411   1.1309380   1.2249441
6-9 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                1.4489758   1.3441442   1.5538073
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.2164378   1.1971945   1.2356811
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.1426155   1.1021386   1.1830923
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.2555950   1.2150667   1.2961234
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3229048   1.2864138   1.3593957
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.4055393   1.3547714   1.4563072
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.1702813   1.1261029   1.2144597
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.3172026   1.2765236   1.3578817
6-9 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                1.2658739   1.2051613   1.3265866
6-9 months     ki1114097-CONTENT          PERU                           NA                   NA                1.3974236   1.3502187   1.4446285
6-9 months     ki1119695-PROBIT           BELARUS                        NA                   NA                1.5766239   1.5455412   1.6077067
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.3469775   1.3279219   1.3660330
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.1069375   1.0799105   1.1339645
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.1952626   1.1843432   1.2061820
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                1.4623324   1.4258089   1.4988559
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.3242433   1.3035625   1.3449241
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.2982559   1.2240694   1.3724425
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9814702   0.9432520   1.0196885
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.0892372   1.0484769   1.1299974
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.0985124   1.0475959   1.1494289
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.0143258   0.9494983   1.0791533
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8131077   0.7319679   0.8942474
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8995224   0.8316661   0.9673787
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.1234734   1.0841051   1.1628417
9-12 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.9148816   0.8796496   0.9501135
9-12 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                1.1892103   1.0637355   1.3146851
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.9997324   0.9682232   1.0312416
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8106649   0.6745544   0.9467754
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.0885809   1.0534446   1.1237171
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0864385   1.0523722   1.1205048
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.9809254   0.9387401   1.0231107
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.0385134   0.9994107   1.0776161
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                1.0927974   1.0590753   1.1265195
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.9983761   0.9658898   1.0308625
9-12 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.9627471   0.9031556   1.0223387
9-12 months    ki1114097-CONTENT          PERU                           NA                   NA                1.2048768   1.1650186   1.2447350
9-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                1.3722990   1.3216012   1.4229968
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.0811847   1.0633156   1.0990539
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.9510823   0.9267136   0.9754510
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.9981724   0.9863625   1.0099822
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                1.0986541   1.0518074   1.1455009
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.0714791   1.0535276   1.0894307
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.1421774   1.0831447   1.2012100
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9104936   0.8713262   0.9496610
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.9514124   0.9120195   0.9908054
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8917280   0.8454370   0.9380189
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9196294   0.8619875   0.9772714
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8563558   0.7920248   0.9206869
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8533724   0.7837188   0.9230260
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                0.9553539   0.9137750   0.9969329
12-15 months   ki1000109-EE               PAKISTAN                       NA                   NA                1.0100593   0.9773974   1.0427213
12-15 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                1.2892085   1.1282289   1.4501880
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.8334688   0.7956713   0.8712664
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.0267825   0.9374856   1.1160794
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7241623   0.6797013   0.7686233
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9312256   0.8944427   0.9680085
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.9373310   0.9067296   0.9679324
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.0096168   0.9494649   1.0697687
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.9658283   0.9236309   1.0080257
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8797046   0.8507834   0.9086259
12-15 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.8739530   0.8186981   0.9292079
12-15 months   ki1114097-CONTENT          PERU                           NA                   NA                0.9291443   0.8867697   0.9715190
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.9205920   0.8936831   0.9475009
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7856274   0.7593482   0.8119066
12-15 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.9588519   0.8629996   1.0547041
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.9415306   0.9256966   0.9573645
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.0021114   0.9429996   1.0612232
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8443884   0.8080665   0.8807103
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8408362   0.7994023   0.8822700
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8871502   0.8344911   0.9398094
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6867479   0.6257076   0.7477883
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7339135   0.6710399   0.7967871
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                0.8591216   0.8197594   0.8984837
15-18 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.8376536   0.8054297   0.8698774
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.9046837   0.8805433   0.9288241
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7947861   0.7590601   0.8305122
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7727719   0.7325606   0.8129832
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9379347   0.8959416   0.9799278
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8768327   0.8458829   0.9077824
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.9228413   0.8852625   0.9604201
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.7549520   0.7202105   0.7896934
15-18 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7480083   0.6959380   0.8000786
15-18 months   ki1114097-CONTENT          PERU                           NA                   NA                0.9860231   0.9406097   1.0314365
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7994243   0.7694755   0.8293732
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7450933   0.7153873   0.7747993
15-18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8247565   0.7538318   0.8956812
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8599177   0.8433915   0.8764438
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9160758   0.8452655   0.9868862
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8787101   0.8434384   0.9139818
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8182798   0.7801724   0.8563871
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.7821810   0.7266294   0.8377325
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7437038   0.6761886   0.8112190
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6999920   0.6362204   0.7637635
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                0.7598022   0.7214752   0.7981291
18-21 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.7183112   0.6840373   0.7525850
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7291468   0.6930874   0.7652062
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8177069   0.7841023   0.8513114
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.9038955   0.8699458   0.9378453
18-21 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.8028550   0.7540631   0.8516469
18-21 months   ki1114097-CONTENT          PERU                           NA                   NA                0.9146338   0.8709588   0.9583088
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6808824   0.6468583   0.7149065
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7490765   0.7205881   0.7775649
18-21 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8179911   0.7716915   0.8642907
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.7961519   0.7521041   0.8401997
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8255513   0.7946970   0.8564056
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.7833565   0.7426056   0.8241074
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.7610506   0.7141593   0.8079419
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8394950   0.7880175   0.8909725
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7189328   0.6544287   0.7834368
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7068472   0.6454809   0.7682134
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.7084129   0.6674749   0.7493508
21-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.6493410   0.6112910   0.6873909
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7172178   0.6817161   0.7527194
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.7181315   0.6848678   0.7513952
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.7990312   0.7536798   0.8443825
21-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7554929   0.6980149   0.8129708
21-24 months   ki1114097-CONTENT          PERU                           NA                   NA                0.9350807   0.8543561   1.0158053
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6907415   0.6526782   0.7288047
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.6780538   0.6548190   0.7012886
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.7513135   0.7054477   0.7971793


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.2386362    0.0329120    0.4443605
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.8650115    0.5070085    1.2230144
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.1959763   -0.0884851    0.4804377
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.8189158    0.4182730    1.2195585
0-3 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.2643225    0.0361769    0.4924682
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.6496431    0.2814197    1.0178665
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.2953053    0.0852479    0.5053628
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.3711500   -0.3269135    1.0692136
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                  1.0095146    0.6292532    1.3897761
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                  0.4307599    0.2663032    0.5952166
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                  1.2314560    0.6844267    1.7784852
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.1347971    0.0076300    0.2619642
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.3920071    0.2303144    0.5536998
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.1530699    0.0185625    0.2875772
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.2039339    0.1001193    0.3077485
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                  1.3791648    1.0659322    1.6923974
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.2513469    0.1176069    0.3850869
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BANGLADESH                     1                    0                  0.1352655   -0.1710377    0.4415687
0-3 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.3966587    0.2541942    0.5391232
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.7738250    0.7065853    0.8410648
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    0                  0.4461115    0.2080406    0.6841824
0-3 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    0                  0.2968388    0.2502424    0.3434351
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.2126770    0.1938620    0.2314920
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.2536367    0.1405461    0.3667274
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0878704   -0.0813427    0.2570835
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.2669864    0.0538683    0.4801045
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.2574061    0.1007848    0.4140274
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.3695986    0.2086736    0.5305236
3-6 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.2501262    0.0393770    0.4608753
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.3235456    0.0358662    0.6112251
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1194083   -0.0988114    0.3376279
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.2059458   -0.0440604    0.4559520
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                 -0.0005009   -0.2007849    0.1997831
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                  0.1084054   -0.0103162    0.2271270
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.4845559    0.1222276    0.8468842
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.1168242    0.0330657    0.2005828
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0245639   -0.1253236    0.1744513
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.2310044    0.1096998    0.3523090
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.1660961    0.0531360    0.2790562
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1926906    0.0418447    0.3435365
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                  0.0804094   -0.0416732    0.2024921
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.1659338    0.0547800    0.2770876
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    0                  0.2489212    0.1023662    0.3954763
3-6 months     ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           1                    0                  0.3079658    0.1280883    0.4878433
3-6 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.2306389    0.1681764    0.2931014
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0905459    0.0242304    0.1568613
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    0                  0.1280536    0.0277396    0.2283676
3-6 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    0                  0.1159856    0.0758499    0.1561213
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.1272725    0.1069695    0.1475754
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.1639316    0.0993809    0.2284824
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0524408   -0.1612828    0.0564013
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.1572794   -0.3554881    0.0409293
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.0502463   -0.1374573    0.2379498
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0543634   -0.2466166    0.1378897
6-9 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           1                    0                 -0.0969781   -0.2687669    0.0748108
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0764462   -0.1964591    0.3493515
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0634904   -0.1841626    0.3111434
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0267767   -0.1973966    0.1438433
6-9 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          1                    0                  0.0868574   -0.0689228    0.2426377
6-9 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE               PAKISTAN                       1                    0                  0.0480373   -0.0495313    0.1456058
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    0                 -0.0388228   -0.3111761    0.2335305
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0792629    0.0090321    0.1494937
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  0.0707258   -0.0170221    0.1584737
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.0177527   -0.1391237    0.1036182
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0099632   -0.0957898    0.0758634
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0053164   -0.0960230    0.0853903
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0233242   -0.1880008    0.1413524
6-9 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         1                    0                  0.0491607   -0.1451723    0.2434937
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  0.1151074    0.0055123    0.2247026
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.1268437   -0.0395810    0.2932683
6-9 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0024556   -0.1307079    0.1257968
6-9 months     ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT          PERU                           1                    0                 -0.0301694   -0.1771952    0.1168564
6-9 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.0794752    0.0198873    0.1390632
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0947779    0.0309650    0.1585908
6-9 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0944520    0.0173407    0.1715633
6-9 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          1                    0                  0.0365106    0.0012856    0.0717356
6-9 months     ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         1                    0                  0.0662252   -0.0110321    0.1434825
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0358215   -0.0078699    0.0795129
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0711951   -0.0499575    0.1923478
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0505815   -0.2347578    0.1335949
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.0312399   -0.0671129    0.1295926
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0887950   -0.2413193    0.0637294
9-12 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           1                    0                  0.0876052   -0.0892779    0.2644883
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.1214500   -0.3510014    0.1081014
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0575598   -0.2671181    0.1519984
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.1752541   -0.0142408    0.3647490
9-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          1                    0                 -0.0158811   -0.1125812    0.0808189
9-12 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE               PAKISTAN                       1                    0                  0.0109036   -0.0612760    0.0830833
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                  0.2950145    0.0621972    0.5278319
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0100682   -0.0772808    0.0571445
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  0.0439418   -0.2452282    0.3331118
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.0178201   -0.1215290    0.0858887
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0029978   -0.0913190    0.0853235
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0532453   -0.0297202    0.1362108
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.2276632   -0.4196159   -0.0357105
9-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.0726445   -0.2269680    0.0816790
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  0.0120515   -0.0865363    0.1106392
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                  0.1005714   -0.0170644    0.2182073
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0441044   -0.1714072    0.0831984
9-12 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    0                  0.1040565   -0.0241337    0.2322467
9-12 months    ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT          PERU                           1                    0                  0.1849724    0.0388517    0.3310930
9-12 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS                        1                    0                  0.0513879   -0.0244541    0.1272299
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0242193   -0.0368028    0.0852414
9-12 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.0412402   -0.1114533    0.0289728
9-12 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.0524978   -0.0921063   -0.0128892
9-12 months    ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         1                    0                 -0.0012977   -0.1032303    0.1006349
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0263816   -0.0122168    0.0649800
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0510317   -0.0604375    0.1625009
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.1220863   -0.3210322    0.0768596
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0033379   -0.1202001    0.1135244
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0055676   -0.1077677    0.1189029
12-15 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.0343787   -0.1622489    0.2310063
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.1474353   -0.0486072    0.3434779
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0221554   -0.1989257    0.1546148
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0240642   -0.1183010    0.1664294
12-15 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          1                    0                  0.0139485   -0.1376009    0.1654979
12-15 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE               PAKISTAN                       1                    0                  0.0642403   -0.0005642    0.1290448
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    0                 -0.0221057   -0.2982426    0.2540313
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0027477   -0.0632023    0.0686977
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.1061513   -0.2980888    0.0857862
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.0693950   -0.1631210    0.0243311
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0525335   -0.1384155    0.0333484
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0127774   -0.0920431    0.0664882
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1570802   -0.0806962    0.3948567
12-15 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         1                    0                  0.0135301   -0.0883904    0.1154506
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -0.0130014   -0.1454009    0.1193980
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 -0.0332612   -0.1407565    0.0742341
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0521135   -0.0534567    0.1576838
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    0                  0.0900867   -0.0206166    0.2007901
12-15 months   ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT          PERU                           1                    0                 -0.0909363   -0.2187754    0.0369029
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0122732   -0.1071593    0.0826129
12-15 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0073254   -0.0563236    0.0709745
12-15 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5           MALAWI                         1                    0                 -0.0839207   -0.2924260    0.1245845
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0256806   -0.0593750    0.0080137
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0233220   -0.1232154    0.0765714
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0518226   -0.2174023    0.1137572
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0427556   -0.1374516    0.0519403
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.1527573   -0.2589153   -0.0465993
15-18 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.0703648   -0.0741195    0.2148491
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0444393   -0.1736768    0.0847983
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0339716   -0.1316806    0.1996238
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.1083891   -0.2600488    0.0432707
15-18 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          1                    0                  0.1043424   -0.0790529    0.2877377
15-18 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0115719   -0.0775213    0.0543774
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0151683   -0.1159845    0.0856478
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.0303522   -0.1044766    0.0437722
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0257052   -0.0747951    0.1262055
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0436431   -0.1266144    0.0393282
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0201812   -0.0866778    0.0463155
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0268578   -0.1694936    0.1157780
15-18 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0452469   -0.1669524    0.0764587
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 -0.0430984   -0.1697541    0.0835573
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0357932   -0.0856297    0.1572161
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    0                  0.0218866   -0.0870584    0.1308315
15-18 months   ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT          PERU                           1                    0                  0.1082580   -0.0355574    0.2520735
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0386186   -0.1259959    0.0487587
15-18 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0189670   -0.0561065    0.0940405
15-18 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5           MALAWI                         1                    0                 -0.0352465   -0.1818593    0.1113663
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0107529   -0.0428080    0.0213022
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0536652   -0.1570705    0.0497401
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.1251964   -0.3274949    0.5778876
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0411676   -0.1393838    0.0570487
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0748001   -0.0619639    0.2115640
18-21 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.0102519   -0.1504589    0.1709628
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0196517   -0.1835339    0.1442304
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0524665   -0.1489563    0.2538893
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.1770645    0.0177390    0.3363900
18-21 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          1                    0                 -0.0249228   -0.1165422    0.0666965
18-21 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0539081   -0.1335968    0.0257805
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.0275381   -0.1240050    0.0689288
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0917746    0.0133482    0.1702010
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0750362    0.0132417    0.1368306
18-21 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0370515   -0.1688237    0.0947207
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0329809   -0.1010566    0.0350948
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    0                  0.0337253   -0.0665549    0.1340054
18-21 months   ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CONTENT          PERU                           1                    0                 -0.0757998   -0.2040311    0.0524316
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0080906   -0.0915958    0.1077770
18-21 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0038291   -0.0696404    0.0772985
18-21 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         1                    0                 -0.0832542   -0.1925954    0.0260870
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0334980   -0.1413543    0.0743583
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0075469   -0.1360770    0.1209832
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0211512   -0.0940315    0.0517291
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0356971   -0.2314355    0.1600413
21-24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           1                    0                 -0.0693469   -0.1883712    0.0496775
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0358120   -0.1813061    0.2529302
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0067370   -0.1786567    0.1651827
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0688549   -0.0732213    0.2109312
21-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0706412   -0.2012963    0.0600139
21-24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0940776   -0.1779639   -0.0101913
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0012265   -0.1099405    0.1123934
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0385214   -0.1179128    0.0408699
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0254418   -0.0976440    0.0467604
21-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         1                    0                  0.0300032   -0.0765405    0.1365469
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0395682   -0.1416771    0.0625406
21-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                  0.0344167   -0.0874206    0.1562540
21-24 months   ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CONTENT          PERU                           1                    0                  0.1068645   -0.1475678    0.3612968
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0646627   -0.1732301    0.0439048
21-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0054025   -0.0482715    0.0590766
21-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 -0.0192489   -0.1163240    0.0778261


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0401950    0.0058085    0.0745815
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0855466    0.0354212    0.1356720
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0280926   -0.0160674    0.0722526
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0548632    0.0111450    0.0985814
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                 0.0191618   -0.0066682    0.0449919
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0381705   -0.0015909    0.0779319
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0420484    0.0068531    0.0772437
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0453980   -0.0814784    0.1722744
0-3 months     ki1000108-IRC              INDIA                          0                    NA                 0.1132666    0.0609584    0.1655749
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.1851519    0.1094269    0.2608770
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.4408592    0.2134618    0.6682567
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0359248   -0.0005571    0.0724068
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0576489    0.0303822    0.0849156
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0161341    0.0024474    0.0298209
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0321086    0.0166556    0.0475616
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                 0.0752825    0.0513842    0.0991807
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0406824    0.0167323    0.0646326
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0874729   -0.0413499    0.2162957
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                 0.0024033   -0.0003079    0.0051145
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0756110    0.0673476    0.0838744
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0208695    0.0075317    0.0342073
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                 0.0344783    0.0285370    0.0404196
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0670717    0.0608625    0.0732810
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0727564    0.0388512    0.1066615
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0126149   -0.0125436    0.0377734
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0277397    0.0007773    0.0547022
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0416243    0.0113241    0.0719244
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0433274    0.0193991    0.0672556
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                 0.0319204    0.0046289    0.0592119
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0297221   -0.0026292    0.0620733
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0199328   -0.0136394    0.0535050
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0527404   -0.0029155    0.1083963
3-6 months     ki1000108-IRC              INDIA                          0                    NA                 0.0020611   -0.0210769    0.0251991
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0467458   -0.0052352    0.0987268
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1062530    0.0113872    0.2011188
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0274060    0.0111555    0.0436565
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0010644   -0.0224855    0.0246143
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0227283    0.0093558    0.0361008
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0221887    0.0060861    0.0382914
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0146662    0.0042002    0.0251321
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                 0.0090849   -0.0030505    0.0212202
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0283671    0.0090444    0.0476898
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0836605    0.0249920    0.1423290
3-6 months     ki1114097-CONTENT          PERU                           0                    NA                 0.0239336    0.0080594    0.0398078
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                 0.0016658   -0.0000051    0.0033367
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0093337    0.0026813    0.0159861
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0172319    0.0031278    0.0313361
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                 0.0133835    0.0088126    0.0179545
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0390289    0.0326074    0.0454505
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0443135    0.0258659    0.0627610
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0113808   -0.0290952    0.0063335
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0184889   -0.0435499    0.0065722
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0084717   -0.0198129    0.0367563
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0060608   -0.0274095    0.0152878
6-9 months     ki0047075b-MAL-ED          PERU                           0                    NA                -0.0121504   -0.0348683    0.0105674
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0101519   -0.0162058    0.0365096
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0129114   -0.0281909    0.0540138
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0004396   -0.0357691    0.0348899
6-9 months     ki1000108-IRC              INDIA                          0                    NA                 0.0099653   -0.0101974    0.0301281
6-9 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0207322   -0.0213079    0.0627722
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0146142   -0.0559436    0.0851721
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0213104    0.0021703    0.0404504
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0290411   -0.0058889    0.0639711
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0035433   -0.0220710    0.0149845
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0013815   -0.0098721    0.0071091
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0020649   -0.0139039    0.0097742
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0017825   -0.0124933    0.0089283
6-9 months     ki1101329-Keneba           GAMBIA                         0                    NA                 0.0041706   -0.0136453    0.0219864
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0311204    0.0020928    0.0601480
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0192482   -0.0065382    0.0450345
6-9 months     ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0041609   -0.0542564    0.0459345
6-9 months     ki1114097-CONTENT          PERU                           0                    NA                -0.0019776   -0.0147701    0.0108149
6-9 months     ki1119695-PROBIT           BELARUS                        0                    NA                 0.0004010   -0.0011986    0.0020007
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0091129    0.0028119    0.0154139
6-9 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0138259    0.0018806    0.0257712
6-9 months     ki1135781-COHORTS          INDIA                          0                    NA                 0.0042132    0.0000791    0.0083473
6-9 months     ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0248832   -0.0034795    0.0532460
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0094936   -0.0022658    0.0212529
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0103208   -0.0092020    0.0298437
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0066135   -0.0281654    0.0149384
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0048014   -0.0104833    0.0200860
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0034444   -0.0202903    0.0134016
9-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0112128   -0.0107795    0.0332051
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0101952   -0.0404056    0.0200151
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0149298   -0.0508077    0.0209481
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0231405   -0.0109190    0.0572000
9-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0025737   -0.0146967    0.0095494
9-12 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0070727   -0.0242569    0.0384023
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0739657    0.0065819    0.1413496
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0021702   -0.0208040    0.0164637
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0029603   -0.1101972    0.1161179
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0008707   -0.0174749    0.0157334
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0000430   -0.0093887    0.0094746
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0060408   -0.0052188    0.0173005
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0081501   -0.0183398    0.0020395
9-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0068812   -0.0200336    0.0062713
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0039438   -0.0303555    0.0224680
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0217738   -0.0027266    0.0462741
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0090674   -0.0281859    0.0100512
9-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0393831   -0.0127491    0.0915153
9-12 months    ki1114097-CONTENT          PERU                           0                    NA                 0.0154084    0.0025803    0.0282366
9-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0008380   -0.0010912    0.0027672
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0022952   -0.0036532    0.0082436
9-12 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0072258   -0.0200977    0.0056462
9-12 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0060015   -0.0105349   -0.0014682
9-12 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0044152   -0.0429802    0.0341497
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0068863   -0.0035038    0.0172764
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0062654   -0.0108221    0.0233529
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0109236   -0.0320324    0.0101851
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0004627   -0.0183118    0.0173864
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0031986   -0.0098048    0.0162021
12-15 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0040046   -0.0197675    0.0277768
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0174916   -0.0075136    0.0424969
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0076389   -0.0345152    0.0192373
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0002109   -0.0326568    0.0322350
12-15 months   ki1000108-IRC              INDIA                          0                    NA                 0.0035684   -0.0133636    0.0205003
12-15 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0309324    0.0016123    0.0602524
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0079747   -0.0993071    0.0833576
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0002957   -0.0179389    0.0173474
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0435823   -0.1182413    0.0310767
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0112985   -0.0266041    0.0040070
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0053706   -0.0136305    0.0028894
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0008946   -0.0121030    0.0103138
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0094530   -0.0023615    0.0212674
12-15 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0005116   -0.0081279    0.0091511
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0000986   -0.0332943    0.0334914
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.0065164   -0.0269114    0.0138785
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0118014   -0.0064688    0.0300717
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0381615   -0.0073105    0.0836334
12-15 months   ki1114097-CONTENT          PERU                           0                    NA                -0.0085499   -0.0195737    0.0024740
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0014939   -0.0126564    0.0096686
12-15 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0010691   -0.0131517    0.0152898
12-15 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0414418   -0.1285733    0.0456897
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0069503   -0.0163913    0.0024907
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0039839   -0.0194445    0.0114766
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0073215   -0.0253162    0.0106732
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0079830   -0.0228616    0.0068956
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0167721   -0.0302385   -0.0033058
15-18 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0084808   -0.0107002    0.0276619
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0037756   -0.0192565    0.0117053
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0050354   -0.0207587    0.0308296
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0280600   -0.0633914    0.0072714
15-18 months   ki1000108-IRC              INDIA                          0                    NA                 0.0070489   -0.0135961    0.0276938
15-18 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0048484   -0.0331872    0.0234903
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0026813   -0.0295715    0.0242090
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0124106   -0.0417967    0.0169755
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0066459   -0.0102154    0.0235071
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0039831   -0.0121245    0.0041582
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0040305   -0.0135928    0.0055319
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0010573   -0.0103860    0.0082714
15-18 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0046377   -0.0145668    0.0052915
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.0084328   -0.0347607    0.0178951
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0044215   -0.0155899    0.0244329
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0215629   -0.0226495    0.0657752
15-18 months   ki1114097-CONTENT          PERU                           0                    NA                 0.0101184   -0.0036103    0.0238471
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0040906   -0.0151089    0.0069276
15-18 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0028967   -0.0132756    0.0190690
15-18 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0106456   -0.0705478    0.0492566
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0030881   -0.0121917    0.0060155
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0081620   -0.0237864    0.0074623
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0105978   -0.0242422    0.0454378
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0058497   -0.0212568    0.0095574
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0092771   -0.0064238    0.0249781
18-21 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0044739   -0.0247566    0.0158088
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0002982   -0.0176260    0.0170296
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0078921   -0.0203985    0.0361826
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0374232    0.0020415    0.0728049
18-21 months   ki1000108-IRC              INDIA                          0                    NA                -0.0021553   -0.0136440    0.0093335
18-21 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0150784   -0.0446483    0.0144915
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0054867   -0.0214075    0.0104342
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0094002    0.0013806    0.0174198
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0088955    0.0002375    0.0175534
18-21 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0008156   -0.0133623    0.0117311
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0062932   -0.0177097    0.0051234
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0085714   -0.0311261    0.0482689
18-21 months   ki1114097-CONTENT          PERU                           0                    NA                -0.0059968   -0.0151301    0.0031365
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0002503   -0.0126293    0.0131299
18-21 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0007648   -0.0153454    0.0168750
18-21 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0294831   -0.0676968    0.0087306
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0054624   -0.0219121    0.0109874
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0010144   -0.0158080    0.0137792
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0032304   -0.0146594    0.0081987
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0059203   -0.0171517    0.0289923
21-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0084361   -0.0239849    0.0071128
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0039166   -0.0129302    0.0207634
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0123912   -0.0398876    0.0151052
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0171903   -0.0135946    0.0479752
21-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0064454   -0.0236494    0.0107586
21-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0341470   -0.0671782   -0.0011158
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0044160   -0.0224577    0.0136257
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0040634   -0.0123900    0.0042632
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0048783   -0.0148306    0.0050741
21-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0038738   -0.0064439    0.0141914
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0050063   -0.0216335    0.0116210
21-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0380455   -0.0118330    0.0879241
21-24 months   ki1114097-CONTENT          PERU                           0                    NA                 0.0140611   -0.0213825    0.0495048
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0080975   -0.0231037    0.0069088
21-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0022145   -0.0108190    0.0152481
21-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0068092   -0.0399268    0.0263084

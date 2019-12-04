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

**Intervention Variable:** sex

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        sex       n_cell       n  outcome_variable 
-------------  -------------------------  -----------------------------  -------  -------  ------  -----------------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Female       122     243  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Male         121     243  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Female        85     168  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Male          83     168  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          Female       101     183  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          Male          82     183  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          Female        75     156  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          Male          81     156  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           Female       121     265  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           Male         144     265  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female       107     211  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male         104     211  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       120     228  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         108     228  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female        47      88  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male          41      88  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          Female       166     377  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          Male         211     377  y_rate_haz       
0-3 months     ki1000109-EE               PAKISTAN                       Female       147     303  y_rate_haz       
0-3 months     ki1000109-EE               PAKISTAN                       Male         156     303  y_rate_haz       
0-3 months     ki1000109-ResPak           PAKISTAN                       Female        39      80  y_rate_haz       
0-3 months     ki1000109-ResPak           PAKISTAN                       Male          41      80  y_rate_haz       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Female       569    1261  y_rate_haz       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Male         692    1261  y_rate_haz       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Female       266     566  y_rate_haz       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Male         300     566  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Female       305     640  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Male         335     640  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female       368     721  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male         353     721  y_rate_haz       
0-3 months     ki1101329-Keneba           GAMBIA                         Female       606    1276  y_rate_haz       
0-3 months     ki1101329-Keneba           GAMBIA                         Male         670    1276  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Female       244     509  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Male         265     509  y_rate_haz       
0-3 months     ki1114097-CMIN             BANGLADESH                     Female        17      43  y_rate_haz       
0-3 months     ki1114097-CMIN             BANGLADESH                     Male          26      43  y_rate_haz       
0-3 months     ki1114097-CONTENT          PERU                           Female        13      29  y_rate_haz       
0-3 months     ki1114097-CONTENT          PERU                           Male          16      29  y_rate_haz       
0-3 months     ki1119695-PROBIT           BELARUS                        Female      7868   15319  y_rate_haz       
0-3 months     ki1119695-PROBIT           BELARUS                        Male        7451   15319  y_rate_haz       
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female      3873    7982  y_rate_haz       
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male        4109    7982  y_rate_haz       
0-3 months     ki1135781-COHORTS          GUATEMALA                      Female       345     728  y_rate_haz       
0-3 months     ki1135781-COHORTS          GUATEMALA                      Male         383     728  y_rate_haz       
0-3 months     ki1135781-COHORTS          INDIA                          Female      3098    6465  y_rate_haz       
0-3 months     ki1135781-COHORTS          INDIA                          Male        3367    6465  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Female      9814   19879  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Male       10065   19879  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Female      1311    2517  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Male        1206    2517  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Female       119     231  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Male         112     231  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Female       102     208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Male         106     208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          Female       127     230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          Male         103     230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          Female       110     233  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          Male         123     233  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           Female       122     267  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           Male         145     267  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female       117     243  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male         126     243  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       123     239  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         116     239  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female       151     307  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male         156     307  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          Female       177     397  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          Male         220     397  y_rate_haz       
3-6 months     ki1000109-EE               PAKISTAN                       Female       135     280  y_rate_haz       
3-6 months     ki1000109-EE               PAKISTAN                       Male         145     280  y_rate_haz       
3-6 months     ki1000109-ResPak           PAKISTAN                       Female        73     156  y_rate_haz       
3-6 months     ki1000109-ResPak           PAKISTAN                       Male          83     156  y_rate_haz       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Female       511    1124  y_rate_haz       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Male         613    1124  y_rate_haz       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Female       239     523  y_rate_haz       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Male         284     523  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Female       286     598  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Male         312     598  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female       358     695  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male         337     695  y_rate_haz       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female       811    1661  y_rate_haz       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male         850    1661  y_rate_haz       
3-6 months     ki1101329-Keneba           GAMBIA                         Female       670    1397  y_rate_haz       
3-6 months     ki1101329-Keneba           GAMBIA                         Male         727    1397  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Female       226     469  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Male         243     469  y_rate_haz       
3-6 months     ki1114097-CMIN             BANGLADESH                     Female        86     185  y_rate_haz       
3-6 months     ki1114097-CMIN             BANGLADESH                     Male          99     185  y_rate_haz       
3-6 months     ki1114097-CONTENT          PERU                           Female       106     214  y_rate_haz       
3-6 months     ki1114097-CONTENT          PERU                           Male         108     214  y_rate_haz       
3-6 months     ki1119695-PROBIT           BELARUS                        Female      6859   13309  y_rate_haz       
3-6 months     ki1119695-PROBIT           BELARUS                        Male        6450   13309  y_rate_haz       
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female      3009    6178  y_rate_haz       
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male        3169    6178  y_rate_haz       
3-6 months     ki1135781-COHORTS          GUATEMALA                      Female       387     805  y_rate_haz       
3-6 months     ki1135781-COHORTS          GUATEMALA                      Male         418     805  y_rate_haz       
3-6 months     ki1135781-COHORTS          INDIA                          Female      3150    6509  y_rate_haz       
3-6 months     ki1135781-COHORTS          INDIA                          Male        3359    6509  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Female      6204   12581  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Male        6377   12581  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Female       947    1840  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Male         893    1840  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Female       113     224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Male         111     224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Female        95     198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Male         103     198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          Female       125     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          Male         105     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          Female       107     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          Male         123     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           Female       111     245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           Male         134     245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female       111     231  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male         120     231  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       115     225  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         110     225  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female       156     313  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male         157     313  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          Female       183     407  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          Male         224     407  y_rate_haz       
6-9 months     ki1000109-EE               PAKISTAN                       Female       151     304  y_rate_haz       
6-9 months     ki1000109-EE               PAKISTAN                       Male         153     304  y_rate_haz       
6-9 months     ki1000109-ResPak           PAKISTAN                       Female        72     143  y_rate_haz       
6-9 months     ki1000109-ResPak           PAKISTAN                       Male          71     143  y_rate_haz       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Female       521    1144  y_rate_haz       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Male         623    1144  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          Female       168     314  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          Male         146     314  y_rate_haz       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Female       229     498  y_rate_haz       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Male         269     498  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Female       269     565  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Male         296     565  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female       348     688  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male         340     688  y_rate_haz       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female       739    1488  y_rate_haz       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male         749    1488  y_rate_haz       
6-9 months     ki1101329-Keneba           GAMBIA                         Female       442     905  y_rate_haz       
6-9 months     ki1101329-Keneba           GAMBIA                         Male         463     905  y_rate_haz       
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      Female       111     213  y_rate_haz       
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      Male         102     213  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Female       231     481  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Male         250     481  y_rate_haz       
6-9 months     ki1114097-CMIN             BANGLADESH                     Female        78     177  y_rate_haz       
6-9 months     ki1114097-CMIN             BANGLADESH                     Male          99     177  y_rate_haz       
6-9 months     ki1114097-CONTENT          PERU                           Female       105     214  y_rate_haz       
6-9 months     ki1114097-CONTENT          PERU                           Male         109     214  y_rate_haz       
6-9 months     ki1119695-PROBIT           BELARUS                        Female      6420   12428  y_rate_haz       
6-9 months     ki1119695-PROBIT           BELARUS                        Male        6008   12428  y_rate_haz       
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female      2891    5929  y_rate_haz       
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male        3038    5929  y_rate_haz       
6-9 months     ki1135781-COHORTS          GUATEMALA                      Female       381     822  y_rate_haz       
6-9 months     ki1135781-COHORTS          GUATEMALA                      Male         441     822  y_rate_haz       
6-9 months     ki1135781-COHORTS          INDIA                          Female      2848    5965  y_rate_haz       
6-9 months     ki1135781-COHORTS          INDIA                          Male        3117    5965  y_rate_haz       
6-9 months     ki1148112-LCNI-5           MALAWI                         Female       285     564  y_rate_haz       
6-9 months     ki1148112-LCNI-5           MALAWI                         Male         279     564  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Female      1523    3054  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Male        1531    3054  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Female       112     225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Male         113     225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Female        93     194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Male         101     194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          Female       122     227  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          Male         105     227  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          Female       106     229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          Male         123     229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           Female       106     235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           Male         129     235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female       116     233  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male         117     233  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       112     224  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         112     224  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female       159     317  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male         158     317  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          Female       180     400  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          Male         220     400  y_rate_haz       
9-12 months    ki1000109-EE               PAKISTAN                       Female       165     326  y_rate_haz       
9-12 months    ki1000109-EE               PAKISTAN                       Male         161     326  y_rate_haz       
9-12 months    ki1000109-ResPak           PAKISTAN                       Female        69     140  y_rate_haz       
9-12 months    ki1000109-ResPak           PAKISTAN                       Male          71     140  y_rate_haz       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Female       506    1146  y_rate_haz       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Male         640    1146  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female       167     311  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male         144     311  y_rate_haz       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Female       223     482  y_rate_haz       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Male         259     482  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Female       271     566  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Male         295     566  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female       345     674  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male         329     674  y_rate_haz       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female       526    1081  y_rate_haz       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male         555    1081  y_rate_haz       
9-12 months    ki1101329-Keneba           GAMBIA                         Female       429     883  y_rate_haz       
9-12 months    ki1101329-Keneba           GAMBIA                         Male         454     883  y_rate_haz       
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Female        99     186  y_rate_haz       
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Male          87     186  y_rate_haz       
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   Female       525    1119  y_rate_haz       
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   Male         594    1119  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Female       229     469  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Male         240     469  y_rate_haz       
9-12 months    ki1114097-CMIN             BANGLADESH                     Female        70     160  y_rate_haz       
9-12 months    ki1114097-CMIN             BANGLADESH                     Male          90     160  y_rate_haz       
9-12 months    ki1114097-CONTENT          PERU                           Female       104     212  y_rate_haz       
9-12 months    ki1114097-CONTENT          PERU                           Male         108     212  y_rate_haz       
9-12 months    ki1119695-PROBIT           BELARUS                        Female      6532   12682  y_rate_haz       
9-12 months    ki1119695-PROBIT           BELARUS                        Male        6150   12682  y_rate_haz       
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female      2887    5933  y_rate_haz       
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male        3046    5933  y_rate_haz       
9-12 months    ki1135781-COHORTS          GUATEMALA                      Female       438     931  y_rate_haz       
9-12 months    ki1135781-COHORTS          GUATEMALA                      Male         493     931  y_rate_haz       
9-12 months    ki1135781-COHORTS          INDIA                          Female      2462    5135  y_rate_haz       
9-12 months    ki1135781-COHORTS          INDIA                          Male        2673    5135  y_rate_haz       
9-12 months    ki1148112-LCNI-5           MALAWI                         Female       191     386  y_rate_haz       
9-12 months    ki1148112-LCNI-5           MALAWI                         Male         195     386  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Female      1759    3501  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Male        1742    3501  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Female       108     212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Male         104     212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Female        86     184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Male          98     184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          Female       122     226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          Male         104     226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          Female       107     230  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          Male         123     230  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           Female       100     224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           Male         124     224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female       114     228  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male         114     228  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       112     226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         114     226  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female       161     329  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male         168     329  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          Female       175     390  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          Male         215     390  y_rate_haz       
12-15 months   ki1000109-EE               PAKISTAN                       Female       157     297  y_rate_haz       
12-15 months   ki1000109-EE               PAKISTAN                       Male         140     297  y_rate_haz       
12-15 months   ki1000109-ResPak           PAKISTAN                       Female        39      92  y_rate_haz       
12-15 months   ki1000109-ResPak           PAKISTAN                       Male          53      92  y_rate_haz       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Female       520    1168  y_rate_haz       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Male         648    1168  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female       158     303  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male         145     303  y_rate_haz       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Female       213     461  y_rate_haz       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Male         248     461  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Female       253     532  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Male         279     532  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female       335     660  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male         325     660  y_rate_haz       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female       401     791  y_rate_haz       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male         390     791  y_rate_haz       
12-15 months   ki1101329-Keneba           GAMBIA                         Female       647    1339  y_rate_haz       
12-15 months   ki1101329-Keneba           GAMBIA                         Male         692    1339  y_rate_haz       
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      Female        51      97  y_rate_haz       
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      Male          46      97  y_rate_haz       
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female       465     978  y_rate_haz       
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male         513     978  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Female       231     469  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Male         238     469  y_rate_haz       
12-15 months   ki1114097-CMIN             BANGLADESH                     Female        73     160  y_rate_haz       
12-15 months   ki1114097-CMIN             BANGLADESH                     Male          87     160  y_rate_haz       
12-15 months   ki1114097-CONTENT          PERU                           Female        96     199  y_rate_haz       
12-15 months   ki1114097-CONTENT          PERU                           Male         103     199  y_rate_haz       
12-15 months   ki1119695-PROBIT           BELARUS                        Female       508    1001  y_rate_haz       
12-15 months   ki1119695-PROBIT           BELARUS                        Male         493    1001  y_rate_haz       
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female      1266    2548  y_rate_haz       
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male        1282    2548  y_rate_haz       
12-15 months   ki1135781-COHORTS          GUATEMALA                      Female       408     885  y_rate_haz       
12-15 months   ki1135781-COHORTS          GUATEMALA                      Male         477     885  y_rate_haz       
12-15 months   ki1148112-LCNI-5           MALAWI                         Female        61     127  y_rate_haz       
12-15 months   ki1148112-LCNI-5           MALAWI                         Male          66     127  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Female      1806    3549  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Male        1743    3549  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Female       111     212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Male         101     212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Female        82     175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Male          93     175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          Female       123     226  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          Male         103     226  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          Female       106     227  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          Male         121     227  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           Female        99     213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           Male         114     213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female       111     225  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male         114     225  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       109     217  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         108     217  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female       160     321  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male         161     321  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          Female       171     382  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          Male         211     382  y_rate_haz       
15-18 months   ki1000109-EE               PAKISTAN                       Female       141     278  y_rate_haz       
15-18 months   ki1000109-EE               PAKISTAN                       Male         137     278  y_rate_haz       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Female       530    1171  y_rate_haz       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Male         641    1171  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female       148     291  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male         143     291  y_rate_haz       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Female       207     449  y_rate_haz       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Male         242     449  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Female       252     528  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Male         276     528  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female       304     604  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male         300     604  y_rate_haz       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female       333     664  y_rate_haz       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male         331     664  y_rate_haz       
15-18 months   ki1101329-Keneba           GAMBIA                         Female       652    1359  y_rate_haz       
15-18 months   ki1101329-Keneba           GAMBIA                         Male         707    1359  y_rate_haz       
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female       498    1021  y_rate_haz       
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male         523    1021  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Female       231     480  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Male         249     480  y_rate_haz       
15-18 months   ki1114097-CMIN             BANGLADESH                     Female        69     163  y_rate_haz       
15-18 months   ki1114097-CMIN             BANGLADESH                     Male          94     163  y_rate_haz       
15-18 months   ki1114097-CONTENT          PERU                           Female        94     189  y_rate_haz       
15-18 months   ki1114097-CONTENT          PERU                           Male          95     189  y_rate_haz       
15-18 months   ki1119695-PROBIT           BELARUS                        Female       130     275  y_rate_haz       
15-18 months   ki1119695-PROBIT           BELARUS                        Male         145     275  y_rate_haz       
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female      1008    2036  y_rate_haz       
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male        1028    2036  y_rate_haz       
15-18 months   ki1135781-COHORTS          GUATEMALA                      Female       358     788  y_rate_haz       
15-18 months   ki1135781-COHORTS          GUATEMALA                      Male         430     788  y_rate_haz       
15-18 months   ki1148112-LCNI-5           MALAWI                         Female        59     120  y_rate_haz       
15-18 months   ki1148112-LCNI-5           MALAWI                         Male          61     120  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Female      1771    3550  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Male        1779    3550  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Female       104     209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Male         105     209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Female        78     167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Male          89     167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          Female       122     226  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          Male         104     226  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          Female       106     227  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          Male         121     227  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           Female        93     202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           Male         109     202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female       114     233  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male         119     233  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       102     204  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         102     204  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female       149     305  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male         156     305  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          Female       168     379  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          Male         211     379  y_rate_haz       
18-21 months   ki1000109-EE               PAKISTAN                       Female       124     254  y_rate_haz       
18-21 months   ki1000109-EE               PAKISTAN                       Male         130     254  y_rate_haz       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Female       194     422  y_rate_haz       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Male         228     422  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Female       260     541  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Male         281     541  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female       271     546  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male         275     546  y_rate_haz       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female         4       9  y_rate_haz       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male           5       9  y_rate_haz       
18-21 months   ki1101329-Keneba           GAMBIA                         Female       633    1348  y_rate_haz       
18-21 months   ki1101329-Keneba           GAMBIA                         Male         715    1348  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Female       217     445  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Male         228     445  y_rate_haz       
18-21 months   ki1114097-CMIN             BANGLADESH                     Female        71     165  y_rate_haz       
18-21 months   ki1114097-CMIN             BANGLADESH                     Male          94     165  y_rate_haz       
18-21 months   ki1114097-CONTENT          PERU                           Female        94     183  y_rate_haz       
18-21 months   ki1114097-CONTENT          PERU                           Male          89     183  y_rate_haz       
18-21 months   ki1119695-PROBIT           BELARUS                        Female       105     218  y_rate_haz       
18-21 months   ki1119695-PROBIT           BELARUS                        Male         113     218  y_rate_haz       
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female       785    1595  y_rate_haz       
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male         810    1595  y_rate_haz       
18-21 months   ki1135781-COHORTS          GUATEMALA                      Female       369     778  y_rate_haz       
18-21 months   ki1135781-COHORTS          GUATEMALA                      Male         409     778  y_rate_haz       
18-21 months   ki1148112-LCNI-5           MALAWI                         Female       244     477  y_rate_haz       
18-21 months   ki1148112-LCNI-5           MALAWI                         Male         233     477  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female       100     207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male         107     207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Female        76     165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Male          89     165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          Female       121     226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          Male         105     226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          Female       105     227  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          Male         122     227  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           Female        88     189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           Male         101     189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female       115     235  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male         120     235  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female        99     204  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         105     204  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female       146     308  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male         162     308  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          Female       174     389  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          Male         215     389  y_rate_haz       
21-24 months   ki1000109-EE               PAKISTAN                       Female        55     106  y_rate_haz       
21-24 months   ki1000109-EE               PAKISTAN                       Male          51     106  y_rate_haz       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female       188     411  y_rate_haz       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male         223     411  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female       229     471  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male         242     471  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female       245     490  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male         245     490  y_rate_haz       
21-24 months   ki1101329-Keneba           GAMBIA                         Female       573    1205  y_rate_haz       
21-24 months   ki1101329-Keneba           GAMBIA                         Male         632    1205  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Female       159     342  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Male         183     342  y_rate_haz       
21-24 months   ki1114097-CMIN             BANGLADESH                     Female        57     133  y_rate_haz       
21-24 months   ki1114097-CMIN             BANGLADESH                     Male          76     133  y_rate_haz       
21-24 months   ki1114097-CONTENT          PERU                           Female        24      38  y_rate_haz       
21-24 months   ki1114097-CONTENT          PERU                           Male          14      38  y_rate_haz       
21-24 months   ki1119695-PROBIT           BELARUS                        Female       103     209  y_rate_haz       
21-24 months   ki1119695-PROBIT           BELARUS                        Male         106     209  y_rate_haz       
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female       585    1169  y_rate_haz       
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male         584    1169  y_rate_haz       
21-24 months   ki1135781-COHORTS          GUATEMALA                      Female       408     862  y_rate_haz       
21-24 months   ki1135781-COHORTS          GUATEMALA                      Male         454     862  y_rate_haz       
21-24 months   ki1148112-LCNI-5           MALAWI                         Female       208     410  y_rate_haz       
21-24 months   ki1148112-LCNI-5           MALAWI                         Male         202     410  y_rate_haz       


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

* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/302983f5-9914-4768-9aa3-0189b642a0d0/9b3cedca-0240-4c8d-a016-02f5ec1db8a8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/302983f5-9914-4768-9aa3-0189b642a0d0/9b3cedca-0240-4c8d-a016-02f5ec1db8a8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/302983f5-9914-4768-9aa3-0189b642a0d0/9b3cedca-0240-4c8d-a016-02f5ec1db8a8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0748038   -0.1207868   -0.0288209
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                -0.1700736   -0.2179924   -0.1221549
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.2059140    0.1245734    0.2872547
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Male                 NA                 0.0604976   -0.0166497    0.1376448
0-3 months     ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0044147   -0.0682463    0.0770756
0-3 months     ki0047075b-MAL-ED          INDIA                          Male                 NA                -0.1371937   -0.2003774   -0.0740101
0-3 months     ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0082186   -0.0551682    0.0716054
0-3 months     ki0047075b-MAL-ED          NEPAL                          Male                 NA                 0.0978589    0.0374627    0.1582550
0-3 months     ki0047075b-MAL-ED          PERU                           Female               NA                -0.2015490   -0.2487992   -0.1542988
0-3 months     ki0047075b-MAL-ED          PERU                           Male                 NA                -0.3142691   -0.3612224   -0.2673157
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.1467405   -0.2107044   -0.0827766
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                -0.2118038   -0.2859180   -0.1376896
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0952590   -0.1526694   -0.0378486
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                -0.1846172   -0.2358007   -0.1334337
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0939049   -0.2250594    0.0372495
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                -0.0808845   -0.2514681    0.0896992
0-3 months     ki1000108-IRC              INDIA                          Female               NA                -0.3002281   -0.3858004   -0.2146557
0-3 months     ki1000108-IRC              INDIA                          Male                 NA                -0.2208956   -0.2929135   -0.1488776
0-3 months     ki1000109-EE               PAKISTAN                       Female               NA                -0.1841820   -0.2451848   -0.1231793
0-3 months     ki1000109-EE               PAKISTAN                       Male                 NA                -0.2461556   -0.3052545   -0.1870566
0-3 months     ki1000109-ResPak           PAKISTAN                       Female               NA                -0.1239367   -0.3234929    0.0756195
0-3 months     ki1000109-ResPak           PAKISTAN                       Male                 NA                -0.3144006   -0.5150543   -0.1137470
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0967654   -0.1537589   -0.0397720
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                -0.1525104   -0.1955301   -0.1094906
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.2040214   -0.2396289   -0.1684140
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                -0.2567822   -0.2955850   -0.2179793
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Female               NA                -0.1859794   -0.2093492   -0.1626095
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                -0.1899165   -0.2153837   -0.1644493
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.2145322   -0.2401570   -0.1889074
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                -0.2487001   -0.2720398   -0.2253605
0-3 months     ki1101329-Keneba           GAMBIA                         Female               NA                -0.2685842   -0.3029382   -0.2342301
0-3 months     ki1101329-Keneba           GAMBIA                         Male                 NA                -0.2940567   -0.3271246   -0.2609888
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0118711   -0.0452404    0.0214983
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Male                 NA                -0.0500882   -0.0873102   -0.0128663
0-3 months     ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0543683   -0.0553191    0.1640556
0-3 months     ki1114097-CMIN             BANGLADESH                     Male                 NA                -0.0152745   -0.1075074    0.0769585
0-3 months     ki1114097-CONTENT          PERU                           Female               NA                 0.2134524    0.1085956    0.3183091
0-3 months     ki1114097-CONTENT          PERU                           Male                 NA                -0.1716006   -0.2739748   -0.0692264
0-3 months     ki1119695-PROBIT           BELARUS                        Female               NA                -0.3356870   -0.3990855   -0.2722884
0-3 months     ki1119695-PROBIT           BELARUS                        Male                 NA                -0.5263977   -0.5813473   -0.4714480
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.1278405   -0.1425347   -0.1131462
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                -0.1519259   -0.1661635   -0.1376882
0-3 months     ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.4984878   -0.5300956   -0.4668800
0-3 months     ki1135781-COHORTS          GUATEMALA                      Male                 NA                -0.5720563   -0.6016186   -0.5424939
0-3 months     ki1135781-COHORTS          INDIA                          Female               NA                -0.0522143   -0.0620717   -0.0423569
0-3 months     ki1135781-COHORTS          INDIA                          Male                 NA                -0.0703145   -0.0799407   -0.0606883
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0741296    0.0678887    0.0803706
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                 0.0439352    0.0372409    0.0506294
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.2469796   -0.2859610   -0.2079981
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                -0.3060913   -0.3476007   -0.2645818
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0012566   -0.0335799    0.0310666
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                -0.0449489   -0.0789219   -0.0109759
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0233601   -0.0279331    0.0746532
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Male                 NA                 0.0947258    0.0436339    0.1458178
3-6 months     ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0563914   -0.0962555   -0.0165272
3-6 months     ki0047075b-MAL-ED          INDIA                          Male                 NA                -0.0109470   -0.0542855    0.0323915
3-6 months     ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0149959   -0.0492916    0.0192997
3-6 months     ki0047075b-MAL-ED          NEPAL                          Male                 NA                -0.0303068   -0.0702422    0.0096287
3-6 months     ki0047075b-MAL-ED          PERU                           Female               NA                 0.0208073   -0.0218339    0.0634485
3-6 months     ki0047075b-MAL-ED          PERU                           Male                 NA                 0.0299014   -0.0151107    0.0749135
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0091866   -0.0577093    0.0393360
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                -0.0009860   -0.0587822    0.0568101
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0363215   -0.0810592    0.0084162
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                -0.1068334   -0.1522256   -0.0614411
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0470264   -0.1110122    0.0169594
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                -0.1472641   -0.2167558   -0.0777724
3-6 months     ki1000108-IRC              INDIA                          Female               NA                -0.0006222   -0.0458605    0.0446161
3-6 months     ki1000108-IRC              INDIA                          Male                 NA                -0.0931405   -0.1326053   -0.0536757
3-6 months     ki1000109-EE               PAKISTAN                       Female               NA                 0.0852444    0.0456470    0.1248417
3-6 months     ki1000109-EE               PAKISTAN                       Male                 NA                 0.0487207    0.0111089    0.0863325
3-6 months     ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0471646   -0.0356701    0.1299993
3-6 months     ki1000109-ResPak           PAKISTAN                       Male                 NA                 0.0273133   -0.0732202    0.1278467
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0391794   -0.0762847   -0.0020740
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                 0.0021584   -0.0230426    0.0273594
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0834301   -0.1128345   -0.0540257
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                -0.0235256   -0.0555122    0.0084610
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Female               NA                -0.0164480   -0.0381134    0.0052175
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                -0.0366008   -0.0596648   -0.0135368
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0190258   -0.0036310    0.0416825
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                 0.0350051    0.0100734    0.0599368
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0653974   -0.0900416   -0.0407531
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                -0.1028047   -0.1251982   -0.0804112
3-6 months     ki1101329-Keneba           GAMBIA                         Female               NA                -0.0176650   -0.0434143    0.0080843
3-6 months     ki1101329-Keneba           GAMBIA                         Male                 NA                -0.0160018   -0.0423032    0.0102995
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.1444460   -0.1701375   -0.1187546
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Male                 NA                -0.1771635   -0.2038414   -0.1504855
3-6 months     ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0010816   -0.0475840    0.0454209
3-6 months     ki1114097-CMIN             BANGLADESH                     Male                 NA                -0.0150949   -0.0605813    0.0303914
3-6 months     ki1114097-CONTENT          PERU                           Female               NA                 0.0326337    0.0011179    0.0641495
3-6 months     ki1114097-CONTENT          PERU                           Male                 NA                -0.0067530   -0.0384200    0.0249139
3-6 months     ki1119695-PROBIT           BELARUS                        Female               NA                 0.0685841    0.0480409    0.0891274
3-6 months     ki1119695-PROBIT           BELARUS                        Male                 NA                 0.0242082    0.0034970    0.0449195
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0015205   -0.0114915    0.0145326
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                -0.0039632   -0.0169628    0.0090363
3-6 months     ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0683108   -0.0883038   -0.0483178
3-6 months     ki1135781-COHORTS          GUATEMALA                      Male                 NA                -0.1222871   -0.1432232   -0.1013509
3-6 months     ki1135781-COHORTS          INDIA                          Female               NA                -0.0565123   -0.0642753   -0.0487493
3-6 months     ki1135781-COHORTS          INDIA                          Male                 NA                -0.0556329   -0.0635928   -0.0476731
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                -0.0004917   -0.0067666    0.0057832
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                -0.0063135   -0.0131861    0.0005591
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0063064   -0.0269680    0.0143552
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                -0.0119779   -0.0293201    0.0053642
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0746126   -0.0983416   -0.0508836
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                -0.0653510   -0.0904088   -0.0402932
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0259615   -0.0298974    0.0818204
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Male                 NA                -0.0070606   -0.0496930    0.0355719
6-9 months     ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0744962   -0.1060772   -0.0429153
6-9 months     ki0047075b-MAL-ED          INDIA                          Male                 NA                -0.0653824   -0.0985641   -0.0322006
6-9 months     ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0394075   -0.0646359   -0.0141792
6-9 months     ki0047075b-MAL-ED          NEPAL                          Male                 NA                -0.0303422   -0.0589128   -0.0017716
6-9 months     ki0047075b-MAL-ED          PERU                           Female               NA                -0.0729490   -0.1029394   -0.0429585
6-9 months     ki0047075b-MAL-ED          PERU                           Male                 NA                -0.0009655   -0.0364481    0.0345172
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0158790   -0.0238439    0.0556018
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                -0.0489199   -0.0878504   -0.0099894
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0746126   -0.1270474   -0.0221778
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                -0.1130615   -0.1537362   -0.0723868
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0673534   -0.1176618   -0.0170450
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                -0.0964847   -0.1427470   -0.0502224
6-9 months     ki1000108-IRC              INDIA                          Female               NA                -0.0314191   -0.0609147   -0.0019236
6-9 months     ki1000108-IRC              INDIA                          Male                 NA                -0.0038895   -0.0347557    0.0269767
6-9 months     ki1000109-EE               PAKISTAN                       Female               NA                -0.1001263   -0.1278779   -0.0723746
6-9 months     ki1000109-EE               PAKISTAN                       Male                 NA                -0.0698240   -0.1002257   -0.0394223
6-9 months     ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0127242   -0.0488493    0.0742976
6-9 months     ki1000109-ResPak           PAKISTAN                       Male                 NA                 0.0226485   -0.0476757    0.0929726
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0752999   -0.0965142   -0.0540856
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                -0.0882426   -0.1052246   -0.0712605
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                -0.0852682   -0.1075585   -0.0629779
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                -0.1282007   -0.1570027   -0.0993986
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0607161   -0.0841828   -0.0372493
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                -0.0585662   -0.0849094   -0.0322230
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Female               NA                -0.0594383   -0.0745411   -0.0443354
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                -0.0632332   -0.0787206   -0.0477457
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0353420   -0.0534256   -0.0172583
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                -0.0272920   -0.0452605   -0.0093235
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0663784   -0.0897526   -0.0430041
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                -0.0389346   -0.0608541   -0.0170152
6-9 months     ki1101329-Keneba           GAMBIA                         Female               NA                -0.0098227   -0.0420626    0.0224173
6-9 months     ki1101329-Keneba           GAMBIA                         Male                 NA                -0.0151855   -0.0461718    0.0158009
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                -0.0864613   -0.1109148   -0.0620078
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                -0.1046118   -0.1354342   -0.0737894
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0381589   -0.0666253   -0.0096925
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Male                 NA                -0.0491916   -0.0702141   -0.0281691
6-9 months     ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0836489   -0.1242339   -0.0430639
6-9 months     ki1114097-CMIN             BANGLADESH                     Male                 NA                -0.0267749   -0.0623367    0.0087868
6-9 months     ki1114097-CONTENT          PERU                           Female               NA                -0.0571614   -0.0836425   -0.0306802
6-9 months     ki1114097-CONTENT          PERU                           Male                 NA                 0.0074945   -0.0238369    0.0388260
6-9 months     ki1119695-PROBIT           BELARUS                        Female               NA                 0.0260021    0.0110247    0.0409794
6-9 months     ki1119695-PROBIT           BELARUS                        Male                 NA                 0.0775606    0.0612043    0.0939170
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0260765   -0.0377743   -0.0143787
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                -0.0367872   -0.0487706   -0.0248039
6-9 months     ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.1095876   -0.1271045   -0.0920707
6-9 months     ki1135781-COHORTS          GUATEMALA                      Male                 NA                -0.1304022   -0.1465394   -0.1142651
6-9 months     ki1135781-COHORTS          INDIA                          Female               NA                -0.0967539   -0.1034739   -0.0900340
6-9 months     ki1135781-COHORTS          INDIA                          Male                 NA                -0.0955158   -0.1023821   -0.0886494
6-9 months     ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0306804    0.0069162    0.0544445
6-9 months     ki1148112-LCNI-5           MALAWI                         Male                 NA                 0.0283227    0.0071574    0.0494879
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0333047   -0.0457479   -0.0208615
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                -0.0246145   -0.0367755   -0.0124535
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0988928   -0.1197632   -0.0780223
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                -0.0756214   -0.1000862   -0.0511567
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0138435   -0.0302949    0.0579820
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Male                 NA                 0.0029620   -0.0400551    0.0459791
9-12 months    ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0822328   -0.1042654   -0.0602002
9-12 months    ki0047075b-MAL-ED          INDIA                          Male                 NA                -0.1017053   -0.1242352   -0.0791754
9-12 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0660365   -0.0884495   -0.0436235
9-12 months    ki0047075b-MAL-ED          NEPAL                          Male                 NA                -0.0590734   -0.0838861   -0.0342606
9-12 months    ki0047075b-MAL-ED          PERU                           Female               NA                -0.0365470   -0.0647295   -0.0083646
9-12 months    ki0047075b-MAL-ED          PERU                           Male                 NA                -0.0463461   -0.0778223   -0.0148698
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0783932   -0.1152932   -0.0414931
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                -0.0912757   -0.1303299   -0.0522216
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.1737708   -0.2273737   -0.1201678
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                -0.1361614   -0.1769422   -0.0953806
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.1326426   -0.1658130   -0.0994723
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                -0.1049011   -0.1512738   -0.0585284
9-12 months    ki1000108-IRC              INDIA                          Female               NA                -0.0498871   -0.0743478   -0.0254265
9-12 months    ki1000108-IRC              INDIA                          Male                 NA                -0.0248766   -0.0481729   -0.0015802
9-12 months    ki1000109-EE               PAKISTAN                       Female               NA                -0.1109998   -0.1313647   -0.0906348
9-12 months    ki1000109-EE               PAKISTAN                       Male                 NA                -0.0911343   -0.1122902   -0.0699784
9-12 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0027861   -0.0498703    0.0554424
9-12 months    ki1000109-ResPak           PAKISTAN                       Male                 NA                -0.0246365   -0.1160105    0.0667375
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0901324   -0.1086972   -0.0715676
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                -0.0741313   -0.0955375   -0.0527250
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                -0.1500966   -0.2215702   -0.0786229
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                -0.1418186   -0.2276764   -0.0559608
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0565572   -0.0775594   -0.0355550
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                -0.0303498   -0.0501329   -0.0105667
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                -0.0646437   -0.0803906   -0.0488968
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                -0.0615802   -0.0768703   -0.0462901
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0370938   -0.0524392   -0.0217483
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                -0.0313693   -0.0469635   -0.0157752
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0691744   -0.0893969   -0.0489519
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                -0.0623308   -0.0824791   -0.0421824
9-12 months    ki1101329-Keneba           GAMBIA                         Female               NA                -0.0945081   -0.1179010   -0.0711153
9-12 months    ki1101329-Keneba           GAMBIA                         Male                 NA                -0.1072031   -0.1335575   -0.0808486
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                -0.0512295   -0.0717831   -0.0306758
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                -0.0672552   -0.0916658   -0.0428445
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                -0.0505869   -0.0730713   -0.0281025
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 NA                -0.0470334   -0.0662198   -0.0278470
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0911742   -0.1137470   -0.0686013
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Male                 NA                -0.0689939   -0.0844246   -0.0535631
9-12 months    ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0935649   -0.1318944   -0.0552354
9-12 months    ki1114097-CMIN             BANGLADESH                     Male                 NA                -0.0873085   -0.1191185   -0.0554985
9-12 months    ki1114097-CONTENT          PERU                           Female               NA                -0.0440987   -0.0645919   -0.0236056
9-12 months    ki1114097-CONTENT          PERU                           Male                 NA                -0.0016419   -0.0270541    0.0237702
9-12 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.0057177   -0.0127322    0.0241675
9-12 months    ki1119695-PROBIT           BELARUS                        Male                 NA                 0.0694643    0.0451964    0.0937323
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0504660   -0.0608904   -0.0400415
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                -0.0672587   -0.0778894   -0.0566279
9-12 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.1017233   -0.1164230   -0.0870237
9-12 months    ki1135781-COHORTS          GUATEMALA                      Male                 NA                -0.0769342   -0.0903772   -0.0634912
9-12 months    ki1135781-COHORTS          INDIA                          Female               NA                -0.0918331   -0.0984319   -0.0852342
9-12 months    ki1135781-COHORTS          INDIA                          Male                 NA                -0.0820868   -0.0890641   -0.0751095
9-12 months    ki1148112-LCNI-5           MALAWI                         Female               NA                -0.0398581   -0.0689672   -0.0107491
9-12 months    ki1148112-LCNI-5           MALAWI                         Male                 NA                -0.0482504   -0.0739806   -0.0225201
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0556905   -0.0651167   -0.0462643
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                -0.0485165   -0.0600850   -0.0369481
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0610412   -0.0814417   -0.0406407
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                -0.0501784   -0.0736747   -0.0266822
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                -0.0264038   -0.0599466    0.0071390
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Male                 NA                 0.0174573   -0.0124525    0.0473670
12-15 months   ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0581215   -0.0764999   -0.0397432
12-15 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                -0.0546464   -0.0797447   -0.0295481
12-15 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0590602   -0.0793785   -0.0387418
12-15 months   ki0047075b-MAL-ED          NEPAL                          Male                 NA                -0.0560585   -0.0789055   -0.0332116
12-15 months   ki0047075b-MAL-ED          PERU                           Female               NA                -0.0643024   -0.0919999   -0.0366048
12-15 months   ki0047075b-MAL-ED          PERU                           Male                 NA                -0.0662006   -0.0895255   -0.0428758
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0751238   -0.1039038   -0.0463437
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                -0.0432280   -0.0785329   -0.0079230
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0644445   -0.1000524   -0.0288366
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                -0.0741820   -0.1094261   -0.0389379
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0763818   -0.1125886   -0.0401749
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                -0.0663000   -0.1086006   -0.0239994
12-15 months   ki1000108-IRC              INDIA                          Female               NA                -0.0446305   -0.0701699   -0.0190911
12-15 months   ki1000108-IRC              INDIA                          Male                 NA                -0.0461205   -0.0682849   -0.0239560
12-15 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0215914   -0.0374002   -0.0057826
12-15 months   ki1000109-EE               PAKISTAN                       Male                 NA                 0.0232116    0.0030110    0.0434122
12-15 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0221372   -0.0502927    0.0945670
12-15 months   ki1000109-ResPak           PAKISTAN                       Male                 NA                 0.1278737    0.0285267    0.2272208
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0756506   -0.1002764   -0.0510249
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                -0.0920321   -0.1133081   -0.0707562
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0164870   -0.0281730    0.0611471
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                 0.0005797   -0.0559714    0.0571308
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.1232647   -0.1523110   -0.0942184
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                -0.1282727   -0.1474472   -0.1090982
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                -0.0448670   -0.0593225   -0.0304115
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                -0.0373231   -0.0514050   -0.0232412
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0314020   -0.0443478   -0.0184563
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                -0.0454738   -0.0593190   -0.0316286
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0545896   -0.0736959   -0.0354833
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                -0.0750963   -0.0967549   -0.0534377
12-15 months   ki1101329-Keneba           GAMBIA                         Female               NA                -0.0541666   -0.0707440   -0.0375892
12-15 months   ki1101329-Keneba           GAMBIA                         Male                 NA                -0.0524384   -0.0699869   -0.0348900
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                -0.0126113   -0.0465886    0.0213661
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                -0.0066643   -0.0370472    0.0237186
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                -0.0379657   -0.0543333   -0.0215982
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 NA                -0.0478690   -0.0757840   -0.0199541
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0692945   -0.0863869   -0.0522021
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                -0.0642309   -0.0777401   -0.0507217
12-15 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0750523   -0.1061573   -0.0439472
12-15 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                -0.0489880   -0.0785152   -0.0194609
12-15 months   ki1114097-CONTENT          PERU                           Female               NA                -0.0939212   -0.1167372   -0.0711053
12-15 months   ki1114097-CONTENT          PERU                           Male                 NA                -0.0543295   -0.0774099   -0.0312491
12-15 months   ki1119695-PROBIT           BELARUS                        Female               NA                -0.0113965   -0.1600134    0.1372204
12-15 months   ki1119695-PROBIT           BELARUS                        Male                 NA                 0.0271834   -0.0976377    0.1520046
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0667826   -0.0808838   -0.0526814
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                -0.0578233   -0.0734986   -0.0421479
12-15 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0911330   -0.1073959   -0.0748700
12-15 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                -0.0844272   -0.0970820   -0.0717724
12-15 months   ki1148112-LCNI-5           MALAWI                         Female               NA                -0.0464681   -0.1088855    0.0159494
12-15 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                -0.0336594   -0.0746712    0.0073525
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0483360   -0.0562181   -0.0404539
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                -0.0416746   -0.0508715   -0.0324777
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0436900   -0.0624877   -0.0248924
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                -0.0481069   -0.0674206   -0.0287931
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                -0.0158768   -0.0472923    0.0155386
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Male                 NA                -0.0242795   -0.0526594    0.0041004
15-18 months   ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0286096   -0.0465912   -0.0106280
15-18 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                -0.0492214   -0.0672069   -0.0312359
15-18 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0502672   -0.0692769   -0.0312576
15-18 months   ki0047075b-MAL-ED          NEPAL                          Male                 NA                -0.0590233   -0.0818182   -0.0362283
15-18 months   ki0047075b-MAL-ED          PERU                           Female               NA                -0.0237497   -0.0442477   -0.0032516
15-18 months   ki0047075b-MAL-ED          PERU                           Male                 NA                -0.0467440   -0.0693848   -0.0241032
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0147721   -0.0421809    0.0126368
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                -0.0419606   -0.0680307   -0.0158906
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0700435   -0.0979130   -0.0421740
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                -0.1013692   -0.1361048   -0.0666337
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0838001   -0.1130756   -0.0545246
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                -0.0524717   -0.0888301   -0.0161132
15-18 months   ki1000108-IRC              INDIA                          Female               NA                -0.0398067   -0.0621050   -0.0175084
15-18 months   ki1000108-IRC              INDIA                          Male                 NA                -0.0374712   -0.0569614   -0.0179810
15-18 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0246893   -0.0414662   -0.0079124
15-18 months   ki1000109-EE               PAKISTAN                       Male                 NA                -0.0266488   -0.0417464   -0.0115512
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0261428   -0.0453593   -0.0069263
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                 0.0002133   -0.0141176    0.0145443
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                -0.0464676   -0.0634905   -0.0294447
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                -0.0270233   -0.0469212   -0.0071254
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0564806   -0.0774301   -0.0355311
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                -0.0587256   -0.0792560   -0.0381952
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                -0.0411267   -0.0533929   -0.0288605
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                -0.0344636   -0.0468781   -0.0220491
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0214608   -0.0329804   -0.0099412
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                -0.0122932   -0.0243638   -0.0002226
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0123467   -0.0335401    0.0088468
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                -0.0261089   -0.0481165   -0.0041014
15-18 months   ki1101329-Keneba           GAMBIA                         Female               NA                -0.0334315   -0.0465759   -0.0202872
15-18 months   ki1101329-Keneba           GAMBIA                         Male                 NA                -0.0332872   -0.0515699   -0.0150045
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                -0.0197098   -0.0406267    0.0012071
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 NA                -0.0140996   -0.0283201    0.0001210
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0754270   -0.0962606   -0.0545934
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                -0.0629558   -0.0775336   -0.0483780
15-18 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0420402   -0.0677550   -0.0163255
15-18 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                -0.0779231   -0.1053224   -0.0505238
15-18 months   ki1114097-CONTENT          PERU                           Female               NA                -0.0334158   -0.0565148   -0.0103168
15-18 months   ki1114097-CONTENT          PERU                           Male                 NA                 0.0148870   -0.0087515    0.0385256
15-18 months   ki1119695-PROBIT           BELARUS                        Female               NA                -0.0163984   -0.1827413    0.1499444
15-18 months   ki1119695-PROBIT           BELARUS                        Male                 NA                -0.0054875   -0.2711803    0.2602054
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0642944   -0.0798145   -0.0487743
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                -0.0604397   -0.0759339   -0.0449454
15-18 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0527814   -0.0687327   -0.0368302
15-18 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                -0.0564906   -0.0714664   -0.0415148
15-18 months   ki1148112-LCNI-5           MALAWI                         Female               NA                -0.0488836   -0.0868068   -0.0109605
15-18 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                -0.0424402   -0.0770311   -0.0078494
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0334798   -0.0414127   -0.0255468
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                -0.0322715   -0.0411449   -0.0233980
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0267132   -0.0419484   -0.0114780
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                -0.0044371   -0.0217209    0.0128466
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                -0.0210834   -0.0567407    0.0145740
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Male                 NA                -0.0197241   -0.0535766    0.0141284
18-21 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0059202   -0.0098039    0.0216444
18-21 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                 0.0056025   -0.0110314    0.0222365
18-21 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0397573   -0.0567423   -0.0227723
18-21 months   ki0047075b-MAL-ED          NEPAL                          Male                 NA                -0.0178977   -0.0370960    0.0013007
18-21 months   ki0047075b-MAL-ED          PERU                           Female               NA                -0.0094986   -0.0332603    0.0142632
18-21 months   ki0047075b-MAL-ED          PERU                           Male                 NA                -0.0069328   -0.0266014    0.0127357
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0373317   -0.0661797   -0.0084837
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                -0.0272183   -0.0525741   -0.0018625
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0207588   -0.0508799    0.0093624
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                -0.0356477   -0.0701181   -0.0011773
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0415931   -0.0731192   -0.0100670
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                -0.0458410   -0.0774835   -0.0141984
18-21 months   ki1000108-IRC              INDIA                          Female               NA                -0.0344377   -0.0549992   -0.0138762
18-21 months   ki1000108-IRC              INDIA                          Male                 NA                -0.0445754   -0.0618565   -0.0272942
18-21 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0413717   -0.0596367   -0.0231067
18-21 months   ki1000109-EE               PAKISTAN                       Male                 NA                -0.0303336   -0.0438301   -0.0168370
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0344800   -0.0517023   -0.0172576
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                -0.0417152   -0.0594426   -0.0239877
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                -0.0133761   -0.0252782   -0.0014740
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                -0.0086857   -0.0198793    0.0025078
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0368501   -0.0473749   -0.0263254
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                -0.0192165   -0.0312439   -0.0071892
18-21 months   ki1101329-Keneba           GAMBIA                         Female               NA                -0.0279293   -0.0439059   -0.0119528
18-21 months   ki1101329-Keneba           GAMBIA                         Male                 NA                -0.0154022   -0.0322500    0.0014455
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0190029    0.0050388    0.0329669
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                 0.0123469   -0.0063089    0.0310028
18-21 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0121023   -0.0402046    0.0160001
18-21 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                -0.0022585   -0.0230160    0.0184989
18-21 months   ki1114097-CONTENT          PERU                           Female               NA                -0.0246906   -0.0464331   -0.0029481
18-21 months   ki1114097-CONTENT          PERU                           Male                 NA                 0.0138339   -0.0065237    0.0341914
18-21 months   ki1119695-PROBIT           BELARUS                        Female               NA                -0.0705713   -0.4871953    0.3460528
18-21 months   ki1119695-PROBIT           BELARUS                        Male                 NA                 0.0122755   -0.1447237    0.1692747
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0745279   -0.0906150   -0.0584408
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                -0.0634644   -0.0806205   -0.0463084
18-21 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0224566   -0.0362909   -0.0086224
18-21 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                -0.0167865   -0.0307462   -0.0028268
18-21 months   ki1148112-LCNI-5           MALAWI                         Female               NA                -0.0128546   -0.0319279    0.0062186
18-21 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                -0.0178694   -0.0442490    0.0085102
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0323256    0.0133065    0.0513447
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                 0.0193496    0.0040340    0.0346652
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0258151    0.0052686    0.0463617
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 NA                 0.0085214   -0.0152725    0.0323154
21-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0220829    0.0066714    0.0374944
21-24 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                 0.0386685    0.0233737    0.0539633
21-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0062014   -0.0242518    0.0118489
21-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 NA                 0.0154868   -0.0045392    0.0355128
21-24 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.0539785    0.0317716    0.0761855
21-24 months   ki0047075b-MAL-ED          PERU                           Male                 NA                 0.0595846    0.0384653    0.0807039
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0487220    0.0235063    0.0739378
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                 0.0392243    0.0170330    0.0614156
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0155348   -0.0415555    0.0104860
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                 0.0318214   -0.0019196    0.0655624
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0242013   -0.0055766    0.0539793
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                 0.0118429   -0.0176526    0.0413384
21-24 months   ki1000108-IRC              INDIA                          Female               NA                -0.0213311   -0.0429431    0.0002810
21-24 months   ki1000108-IRC              INDIA                          Male                 NA                -0.0079008   -0.0250900    0.0092885
21-24 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0131484   -0.0301525    0.0038558
21-24 months   ki1000109-EE               PAKISTAN                       Male                 NA                 0.0006291   -0.0177127    0.0189709
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0394389    0.0217370    0.0571408
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                 0.0417474    0.0260508    0.0574441
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0367322    0.0247553    0.0487092
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                 0.0552258    0.0428914    0.0675601
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0512180    0.0397429    0.0626931
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                 0.0663062    0.0545798    0.0780325
21-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0119080   -0.0035043    0.0273202
21-24 months   ki1101329-Keneba           GAMBIA                         Male                 NA                 0.0193026    0.0033091    0.0352960
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0430634    0.0247462    0.0613805
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                 0.0525264    0.0282688    0.0767839
21-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0091058   -0.0171970    0.0354085
21-24 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                 0.0204989   -0.0059606    0.0469585
21-24 months   ki1114097-CONTENT          PERU                           Female               NA                 0.0018952   -0.0262714    0.0300617
21-24 months   ki1114097-CONTENT          PERU                           Male                 NA                 0.0547839   -0.0023529    0.1119208
21-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.0158002   -0.1226298    0.1542303
21-24 months   ki1119695-PROBIT           BELARUS                        Male                 NA                 0.1021924   -0.1448283    0.3492130
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0149997   -0.0021041    0.0321036
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                 0.0194600    0.0012787    0.0376412
21-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0093472   -0.0204414    0.0017471
21-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                -0.0022651   -0.0133893    0.0088591
21-24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0142845   -0.0085241    0.0370932
21-24 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                 0.0385295    0.0180089    0.0590500


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
0-3 months     ki1114097-CONTENT          PERU                           NA                   NA                 0.0010094   -0.1011210    0.1031397
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
12-15 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0076044   -0.1165585    0.1317673
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
15-18 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.0106454   -0.1735842    0.1522935
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
18-21 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.0276277   -0.2378127    0.1825572
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
21-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0596163   -0.0947966    0.2140293
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.0172279    0.0047469    0.0297089
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0056172   -0.0134884    0.0022541
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.0262296    0.0108190    0.0416402


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            -0.0952698   -0.1616825   -0.0288571
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Male                 Female            -0.1454165   -0.2575235   -0.0333094
0-3 months     ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Male                 Female            -0.1416084   -0.2378985   -0.0453183
0-3 months     ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Male                 Female             0.0896402    0.0020869    0.1771935
0-3 months     ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Male                 Female            -0.1127201   -0.1793324   -0.0461078
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            -0.0650633   -0.1629627    0.0328362
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0893582   -0.1662718   -0.0124445
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female             0.0130205   -0.2021545    0.2281954
0-3 months     ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Male                 Female             0.0793325   -0.0325121    0.1911771
0-3 months     ki1000109-EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       Male                 Female            -0.0619735   -0.1469090    0.0229619
0-3 months     ki1000109-ResPak           PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       Male                 Female            -0.1904640   -0.4734561    0.0925282
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            -0.0557449   -0.1391150    0.0276252
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            -0.0527607   -0.1054253   -0.0000962
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            -0.0039371   -0.0385020    0.0306277
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            -0.0341679   -0.0688287    0.0004928
0-3 months     ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         Male                 Female            -0.0254725   -0.0731557    0.0222106
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Male                 Female            -0.0382172   -0.0882071    0.0117727
0-3 months     ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BANGLADESH                     Male                 Female            -0.0696427   -0.2129544    0.0736690
0-3 months     ki1114097-CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CONTENT          PERU                           Male                 Female            -0.3850530   -0.5315979   -0.2385080
0-3 months     ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        Male                 Female            -0.1907107   -0.2097339   -0.1716876
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            -0.0240854   -0.0445459   -0.0036249
0-3 months     ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Male                 Female            -0.0735685   -0.1168465   -0.0302905
0-3 months     ki1135781-COHORTS          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          Male                 Female            -0.0181002   -0.0318781   -0.0043222
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            -0.0301945   -0.0386182   -0.0217708
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            -0.0591117   -0.1165313   -0.0016921
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            -0.0436923   -0.0905854    0.0032007
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Male                 Female             0.0713658   -0.0010316    0.1437632
3-6 months     ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Male                 Female             0.0454444   -0.0134401    0.1043288
3-6 months     ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Male                 Female            -0.0153108   -0.0679514    0.0373297
3-6 months     ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Male                 Female             0.0090941   -0.0529088    0.0710970
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female             0.0082006   -0.0672636    0.0836648
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0705119   -0.1342451   -0.0067787
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            -0.1002377   -0.1947008   -0.0057746
3-6 months     ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Male                 Female            -0.0925183   -0.1525514   -0.0324852
3-6 months     ki1000109-EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       Male                 Female            -0.0365237   -0.0911368    0.0180895
3-6 months     ki1000109-ResPak           PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       Male                 Female            -0.0198513   -0.1501147    0.1104121
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Male                 Female             0.0413378   -0.0085586    0.0912342
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Male                 Female             0.0599045    0.0164561    0.1033529
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            -0.0201529   -0.0517968    0.0114911
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female             0.0159794   -0.0177092    0.0496679
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0374073   -0.0707061   -0.0041086
3-6 months     ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         Male                 Female             0.0016631   -0.0351443    0.0384706
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Male                 Female            -0.0327174   -0.0697547    0.0043199
3-6 months     ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     Male                 Female            -0.0140134   -0.0790633    0.0510365
3-6 months     ki1114097-CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           Male                 Female            -0.0393867   -0.0840638    0.0052904
3-6 months     ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        Male                 Female            -0.0443759   -0.0597519   -0.0289999
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            -0.0054838   -0.0238768    0.0129092
3-6 months     ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Male                 Female            -0.0539763   -0.0829252   -0.0250273
3-6 months     ki1135781-COHORTS          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          Male                 Female             0.0008794   -0.0102392    0.0119980
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            -0.0058218   -0.0147061    0.0030625
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            -0.0056715   -0.0322981    0.0209550
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Male                 Female             0.0092616   -0.0252487    0.0437718
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Male                 Female            -0.0330221   -0.1032912    0.0372471
6-9 months     ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          Male                 Female             0.0091139   -0.0366943    0.0549220
6-9 months     ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          Male                 Female             0.0090653   -0.0290496    0.0471803
6-9 months     ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           Male                 Female             0.0719835    0.0255244    0.1184426
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            -0.0647988   -0.1204180   -0.0091797
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0384489   -0.1048103    0.0279125
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            -0.0291313   -0.0974770    0.0392144
6-9 months     ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          Male                 Female             0.0275296   -0.0151636    0.0702228
6-9 months     ki1000109-EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE               PAKISTAN                       Male                 Female             0.0303023   -0.0108610    0.0714656
6-9 months     ki1000109-ResPak           PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-ResPak           PAKISTAN                       Male                 Female             0.0099243   -0.0835465    0.1033950
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            -0.0129426   -0.0481883    0.0223030
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            -0.0429324   -0.0793524   -0.0065125
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Male                 Female             0.0021498   -0.0331298    0.0374294
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            -0.0037949   -0.0254272    0.0178374
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female             0.0080500   -0.0174428    0.0335428
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female             0.0274437   -0.0046002    0.0594877
6-9 months     ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         Male                 Female            -0.0053628   -0.0500793    0.0393537
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            -0.0181505   -0.0574951    0.0211941
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Male                 Female            -0.0110326   -0.0464202    0.0243550
6-9 months     ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CMIN             BANGLADESH                     Male                 Female             0.0568739    0.0029130    0.1108349
6-9 months     ki1114097-CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT          PERU                           Male                 Female             0.0646559    0.0236326    0.1056792
6-9 months     ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS                        Male                 Female             0.0515586    0.0396859    0.0634313
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            -0.0107107   -0.0274571    0.0060356
6-9 months     ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      Male                 Female            -0.0208146   -0.0446317    0.0030024
6-9 months     ki1135781-COHORTS          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          Male                 Female             0.0012382   -0.0083694    0.0108457
6-9 months     ki1148112-LCNI-5           MALAWI                         Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         Male                 Female            -0.0023577   -0.0341807    0.0294653
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female             0.0086902   -0.0080948    0.0254751
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 Female             0.0232713   -0.0088861    0.0554288
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Male                 Female            -0.0108815   -0.0725150    0.0507519
9-12 months    ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          Male                 Female            -0.0194724   -0.0509848    0.0120399
9-12 months    ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          Male                 Female             0.0069631   -0.0264736    0.0403998
9-12 months    ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           Male                 Female            -0.0097990   -0.0520483    0.0324503
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            -0.0128826   -0.0666119    0.0408467
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female             0.0376094   -0.0297431    0.1049618
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female             0.0277415   -0.0292734    0.0847564
9-12 months    ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          Male                 Female             0.0250106   -0.0087688    0.0587899
9-12 months    ki1000109-EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE               PAKISTAN                       Male                 Female             0.0198655   -0.0094995    0.0492305
9-12 months    ki1000109-ResPak           PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-ResPak           PAKISTAN                       Male                 Female            -0.0274226   -0.1328830    0.0780379
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 Female             0.0160011   -0.0141097    0.0461120
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female             0.0082780   -0.1034361    0.1199921
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 Female             0.0262074   -0.0026451    0.0550598
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 Female             0.0030634   -0.0188854    0.0250123
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female             0.0057244   -0.0161539    0.0276028
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female             0.0068436   -0.0217029    0.0353902
9-12 months    ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         Male                 Female            -0.0126950   -0.0479339    0.0225440
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            -0.0160257   -0.0479370    0.0158856
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 Female             0.0035535   -0.0259957    0.0331027
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Male                 Female             0.0221803   -0.0051627    0.0495233
9-12 months    ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CMIN             BANGLADESH                     Male                 Female             0.0062563   -0.0435536    0.0560663
9-12 months    ki1114097-CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT          PERU                           Male                 Female             0.0424568    0.0098110    0.0751026
9-12 months    ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS                        Male                 Female             0.0637467    0.0533772    0.0741161
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            -0.0167927   -0.0316817   -0.0019038
9-12 months    ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      Male                 Female             0.0247891    0.0048694    0.0447088
9-12 months    ki1135781-COHORTS          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          Male                 Female             0.0097463    0.0001427    0.0193498
9-12 months    ki1148112-LCNI-5           MALAWI                         Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         Male                 Female            -0.0083922   -0.0472430    0.0304585
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female             0.0071740   -0.0076785    0.0220264
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female             0.0108628   -0.0202540    0.0419795
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Male                 Female             0.0438611   -0.0010801    0.0888023
12-15 months   ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          Male                 Female             0.0034751   -0.0276326    0.0345828
12-15 months   ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          Male                 Female             0.0030016   -0.0275732    0.0335765
12-15 months   ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           Male                 Female            -0.0018983   -0.0381088    0.0343123
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female             0.0318958   -0.0136534    0.0774450
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0097375   -0.0598381    0.0403630
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female             0.0100818   -0.0455983    0.0657619
12-15 months   ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          Male                 Female            -0.0014899   -0.0353060    0.0323261
12-15 months   ki1000109-EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE               PAKISTAN                       Male                 Female             0.0448030    0.0191519    0.0704542
12-15 months   ki1000109-ResPak           PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-ResPak           PAKISTAN                       Male                 Female             0.1057366   -0.0172103    0.2286834
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            -0.0163815   -0.0525309    0.0197679
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            -0.0159074   -0.0879667    0.0561519
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            -0.0050080   -0.0398124    0.0297964
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female             0.0075439   -0.0126368    0.0277246
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            -0.0140718   -0.0330265    0.0048830
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0205067   -0.0493882    0.0083749
12-15 months   ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         Male                 Female             0.0017282   -0.0224122    0.0258686
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female             0.0059469   -0.0396335    0.0515274
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 Female            -0.0099033   -0.0423656    0.0225590
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female             0.0050637   -0.0167228    0.0268501
12-15 months   ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CMIN             BANGLADESH                     Male                 Female             0.0260642   -0.0168237    0.0689521
12-15 months   ki1114097-CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT          PERU                           Male                 Female             0.0395917    0.0071375    0.0720459
12-15 months   ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1119695-PROBIT           BELARUS                        Male                 Female             0.0385799   -0.0810070    0.1581668
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female             0.0089593   -0.0121253    0.0300440
12-15 months   ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female             0.0067057   -0.0139008    0.0273122
12-15 months   ki1148112-LCNI-5           MALAWI                         Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5           MALAWI                         Male                 Female             0.0128087   -0.0618767    0.0874941
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female             0.0066614   -0.0053574    0.0186802
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            -0.0044169   -0.0313682    0.0225345
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Male                 Female            -0.0084027   -0.0507388    0.0339335
15-18 months   ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            -0.0206118   -0.0460444    0.0048208
15-18 months   ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          Male                 Female            -0.0087560   -0.0384373    0.0209252
15-18 months   ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           Male                 Female            -0.0229944   -0.0535358    0.0075470
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            -0.0271886   -0.0650157    0.0106385
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0313258   -0.0758597    0.0132081
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female             0.0313285   -0.0153512    0.0780082
15-18 months   ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          Male                 Female             0.0023355   -0.0272801    0.0319511
15-18 months   ki1000109-EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE               PAKISTAN                       Male                 Female            -0.0019595   -0.0245294    0.0206104
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 Female             0.0263562   -0.0016051    0.0543174
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female             0.0194443   -0.0067417    0.0456303
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            -0.0022450   -0.0315772    0.0270873
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female             0.0066631   -0.0107891    0.0241152
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female             0.0091676   -0.0075178    0.0258530
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0137622   -0.0443154    0.0167909
15-18 months   ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         Male                 Female             0.0001443   -0.0223730    0.0226617
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 Female             0.0056102   -0.0186391    0.0298595
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female             0.0124712   -0.0129562    0.0378985
15-18 months   ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            -0.0358829   -0.0734590    0.0016933
15-18 months   ki1114097-CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT          PERU                           Male                 Female             0.0483028    0.0152522    0.0813535
15-18 months   ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1119695-PROBIT           BELARUS                        Male                 Female             0.0109110   -0.2995361    0.3213580
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female             0.0038547   -0.0180757    0.0257852
15-18 months   ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            -0.0037092   -0.0255888    0.0181704
15-18 months   ki1148112-LCNI-5           MALAWI                         Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5           MALAWI                         Male                 Female             0.0064434   -0.0448858    0.0577726
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female             0.0012083   -0.0104914    0.0129080
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female             0.0222761   -0.0007639    0.0453160
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Male                 Female             0.0013593   -0.0478082    0.0505267
18-21 months   ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            -0.0003177   -0.0232073    0.0225720
18-21 months   ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          Male                 Female             0.0218596   -0.0037737    0.0474930
18-21 months   ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           Male                 Female             0.0025658   -0.0282802    0.0334117
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female             0.0101134   -0.0282939    0.0485208
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0148890   -0.0606655    0.0308876
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            -0.0042479   -0.0489149    0.0404192
18-21 months   ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          Male                 Female            -0.0101377   -0.0369968    0.0167215
18-21 months   ki1000109-EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE               PAKISTAN                       Male                 Female             0.0110382   -0.0116724    0.0337487
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            -0.0072352   -0.0319510    0.0174806
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female             0.0046904   -0.0116484    0.0210292
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female             0.0176336    0.0016515    0.0336157
18-21 months   ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         Male                 Female             0.0125271   -0.0106913    0.0357456
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            -0.0066559   -0.0299590    0.0166472
18-21 months   ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CMIN             BANGLADESH                     Male                 Female             0.0098437   -0.0250936    0.0447810
18-21 months   ki1114097-CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CONTENT          PERU                           Male                 Female             0.0385245    0.0087391    0.0683098
18-21 months   ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1119695-PROBIT           BELARUS                        Male                 Female             0.0828468   -0.3742354    0.5399290
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female             0.0110635   -0.0124551    0.0345820
18-21 months   ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female             0.0056702   -0.0139834    0.0253237
18-21 months   ki1148112-LCNI-5           MALAWI                         Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         Male                 Female            -0.0050147   -0.0375673    0.0275379
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            -0.0129760   -0.0373952    0.0114431
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 Female            -0.0172937   -0.0487311    0.0141437
21-24 months   ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          Male                 Female             0.0165856   -0.0051272    0.0382984
21-24 months   ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 Female             0.0216882   -0.0052721    0.0486485
21-24 months   ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           Male                 Female             0.0056061   -0.0250398    0.0362520
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            -0.0094977   -0.0430877    0.0240923
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female             0.0473562    0.0047471    0.0899653
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            -0.0123585   -0.0542716    0.0295546
21-24 months   ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          Male                 Female             0.0134303   -0.0141840    0.0410446
21-24 months   ki1000109-EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1000109-EE               PAKISTAN                       Male                 Female             0.0137775   -0.0112338    0.0387887
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female             0.0023085   -0.0213503    0.0259674
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female             0.0184935    0.0013010    0.0356861
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female             0.0150882   -0.0013187    0.0314950
21-24 months   ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         Male                 Female             0.0073946   -0.0148164    0.0296056
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female             0.0094630   -0.0209335    0.0398595
21-24 months   ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female             0.0113932   -0.0259156    0.0487019
21-24 months   ki1114097-CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CONTENT          PERU                           Male                 Female             0.0528887   -0.0108135    0.1165910
21-24 months   ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1119695-PROBIT           BELARUS                        Male                 Female             0.0863921   -0.1711701    0.3439543
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female             0.0044602   -0.0205017    0.0294222
21-24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female             0.0070821   -0.0086287    0.0227929
21-24 months   ki1148112-LCNI-5           MALAWI                         Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         Male                 Female             0.0242450   -0.0064361    0.0549260


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0474389   -0.0810487   -0.0138290
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Female               NA                -0.0718427   -0.1283158   -0.0153695
0-3 months     ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0634529   -0.1077957   -0.0191102
0-3 months     ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0465440    0.0005401    0.0925479
0-3 months     ki0047075b-MAL-ED          PERU                           Female               NA                -0.0612517   -0.0980767   -0.0244266
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0320691   -0.0805230    0.0163848
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0423276   -0.0792198   -0.0054354
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0060664   -0.0941949    0.1063276
0-3 months     ki1000108-IRC              INDIA                          Female               NA                 0.0444010   -0.0183229    0.1071248
0-3 months     ki1000109-EE               PAKISTAN                       Female               NA                -0.0319072   -0.0757756    0.0119613
0-3 months     ki1000109-ResPak           PAKISTAN                       Female               NA                -0.0976128   -0.2441578    0.0489322
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0305912   -0.0768488    0.0156664
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0279651   -0.0559634    0.0000333
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Female               NA                -0.0020608   -0.0201540    0.0160323
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0167285   -0.0337442    0.0002871
0-3 months     ki1101329-Keneba           GAMBIA                         Female               NA                -0.0133751   -0.0384222    0.0116721
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0198970   -0.0459760    0.0061821
0-3 months     ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0421095   -0.1293728    0.0451538
0-3 months     ki1114097-CONTENT          PERU                           Female               NA                -0.2124430   -0.3199977   -0.1048883
0-3 months     ki1119695-PROBIT           BELARUS                        Female               NA                -0.0927597   -0.1014879   -0.0840315
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0123988   -0.0229348   -0.0018627
0-3 months     ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0387043   -0.0616289   -0.0157797
0-3 months     ki1135781-COHORTS          INDIA                          Female               NA                -0.0094266   -0.0166057   -0.0022476
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                -0.0152879   -0.0195456   -0.0110301
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0283229   -0.0558069   -0.0008388
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0211841   -0.0440946    0.0017263
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0363691   -0.0008444    0.0735826
3-6 months     ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0203512   -0.0061808    0.0468831
3-6 months     ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0080825   -0.0358888    0.0197237
3-6 months     ki0047075b-MAL-ED          PERU                           Female               NA                 0.0049387   -0.0287376    0.0386151
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0042522   -0.0348808    0.0433852
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0342233   -0.0654789   -0.0029678
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0509351   -0.0992632   -0.0026071
3-6 months     ki1000108-IRC              INDIA                          Female               NA                -0.0512696   -0.0848442   -0.0176950
3-6 months     ki1000109-EE               PAKISTAN                       Female               NA                -0.0189140   -0.0472768    0.0094487
3-6 months     ki1000109-ResPak           PAKISTAN                       Female               NA                -0.0105619   -0.0798863    0.0587624
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0225445   -0.0044452    0.0495343
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0325294    0.0087975    0.0562613
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Female               NA                -0.0105145   -0.0270442    0.0060151
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0077483   -0.0085978    0.0240944
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0191428   -0.0362069   -0.0020788
3-6 months     ki1101329-Keneba           GAMBIA                         Female               NA                 0.0008655   -0.0182892    0.0200202
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0169517   -0.0361987    0.0022953
3-6 months     ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0074991   -0.0423242    0.0273261
3-6 months     ki1114097-CONTENT          PERU                           Female               NA                -0.0198774   -0.0425793    0.0028245
3-6 months     ki1119695-PROBIT           BELARUS                        Female               NA                -0.0215061   -0.0290219   -0.0139903
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0028129   -0.0122478    0.0066220
3-6 months     ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0280274   -0.0431745   -0.0128804
3-6 months     ki1135781-COHORTS          INDIA                          Female               NA                 0.0004538   -0.0052840    0.0061916
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                -0.0029509   -0.0074572    0.0015553
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0027525   -0.0156737    0.0101686
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0045894   -0.0125224    0.0217013
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Female               NA                -0.0171781   -0.0538048    0.0194485
6-9 months     ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0041607   -0.0167600    0.0250813
6-9 months     ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0048480   -0.0155436    0.0252396
6-9 months     ki0047075b-MAL-ED          PERU                           Female               NA                 0.0393706    0.0135656    0.0651755
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0336617   -0.0628562   -0.0044673
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0187972   -0.0513381    0.0137436
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0146122   -0.0489323    0.0197079
6-9 months     ki1000108-IRC              INDIA                          Female               NA                 0.0151514   -0.0083833    0.0386862
6-9 months     ki1000109-EE               PAKISTAN                       Female               NA                 0.0152508   -0.0055364    0.0360380
6-9 months     ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0049274   -0.0414883    0.0513432
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0070483   -0.0261115    0.0120149
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                -0.0199622   -0.0370617   -0.0028627
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0011612   -0.0178956    0.0202181
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Female               NA                -0.0019881   -0.0133222    0.0093460
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0039782   -0.0086236    0.0165800
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0138141   -0.0023307    0.0299588
6-9 months     ki1101329-Keneba           GAMBIA                         Female               NA                -0.0027436   -0.0256214    0.0201341
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                -0.0086918   -0.0275723    0.0101888
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0057342   -0.0241336    0.0126651
6-9 months     ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0318108    0.0013424    0.0622793
6-9 months     ki1114097-CONTENT          PERU                           Female               NA                 0.0329322    0.0115911    0.0542733
6-9 months     ki1119695-PROBIT           BELARUS                        Female               NA                 0.0249247    0.0191474    0.0307020
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0054881   -0.0140700    0.0030937
6-9 months     ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0111670   -0.0239644    0.0016305
6-9 months     ki1135781-COHORTS          INDIA                          Female               NA                 0.0006470   -0.0043734    0.0056674
6-9 months     ki1148112-LCNI-5           MALAWI                         Female               NA                -0.0011663   -0.0169088    0.0145762
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0043565   -0.0040614    0.0127744
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0116874   -0.0045345    0.0279093
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Female               NA                -0.0056651   -0.0377618    0.0264315
9-12 months    ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0090071   -0.0236382    0.0056240
9-12 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0037400   -0.0142251    0.0217051
9-12 months    ki0047075b-MAL-ED          PERU                           Female               NA                -0.0053790   -0.0285796    0.0178215
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0064689   -0.0334616    0.0205237
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0188047   -0.0149619    0.0525712
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0138270   -0.0146317    0.0422856
9-12 months    ki1000108-IRC              INDIA                          Female               NA                 0.0137558   -0.0048629    0.0323745
9-12 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0098109   -0.0047316    0.0243534
9-12 months    ki1000109-ResPak           PAKISTAN                       Female               NA                -0.0139072   -0.0674392    0.0396249
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0089361   -0.0075032    0.0253753
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0038329   -0.0478953    0.0555611
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0140824   -0.0014652    0.0296300
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0015967   -0.0098438    0.0130371
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0027943   -0.0078874    0.0134759
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0035136   -0.0111440    0.0181712
9-12 months    ki1101329-Keneba           GAMBIA                         Female               NA                -0.0065272   -0.0246504    0.0115960
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                -0.0074959   -0.0224666    0.0074748
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0018863   -0.0137997    0.0175723
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0113502   -0.0026779    0.0253784
9-12 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0035192   -0.0245030    0.0315414
9-12 months    ki1114097-CONTENT          PERU                           Female               NA                 0.0216289    0.0047533    0.0385046
9-12 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.0309133    0.0258616    0.0359650
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0086214   -0.0162683   -0.0009744
9-12 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0131268    0.0025486    0.0237049
9-12 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.0050734    0.0000725    0.0100742
9-12 months    ki1148112-LCNI-5           MALAWI                         Female               NA                -0.0042396   -0.0238708    0.0153915
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0035696   -0.0038229    0.0109620
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0053289   -0.0099535    0.0206113
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0233608   -0.0007844    0.0475059
12-15 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0015992   -0.0127177    0.0159160
12-15 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0016052   -0.0147468    0.0179573
12-15 months   ki0047075b-MAL-ED          PERU                           Female               NA                -0.0010508   -0.0210963    0.0189947
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0159479   -0.0069210    0.0388168
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0049118   -0.0301918    0.0203681
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0051481   -0.0232895    0.0335858
12-15 months   ki1000108-IRC              INDIA                          Female               NA                -0.0008214   -0.0194637    0.0178209
12-15 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0211193    0.0087623    0.0334762
12-15 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0609135   -0.0107236    0.1325506
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0090884   -0.0291298    0.0109530
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                -0.0076124   -0.0421079    0.0268830
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0026941   -0.0214189    0.0160307
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0039563   -0.0066320    0.0145446
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0069293   -0.0162785    0.0024199
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0101107   -0.0243686    0.0041472
12-15 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0008931   -0.0115828    0.0133691
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0028202   -0.0188034    0.0244438
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                -0.0051947   -0.0220823    0.0116929
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0025696   -0.0084886    0.0136278
12-15 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0141724   -0.0092350    0.0375799
12-15 months   ki1114097-CONTENT          PERU                           Female               NA                 0.0204922    0.0034698    0.0375146
12-15 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.0190009   -0.0398689    0.0778707
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0045078   -0.0061021    0.0151177
12-15 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0036143   -0.0074945    0.0147230
12-15 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0066565   -0.0321725    0.0454854
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0032716   -0.0026291    0.0091723
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0021043   -0.0149477    0.0107392
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                -0.0044654   -0.0269727    0.0180418
15-18 months   ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0093939   -0.0210622    0.0022744
15-18 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0046673   -0.0204988    0.0111642
15-18 months   ki0047075b-MAL-ED          PERU                           Female               NA                -0.0123068   -0.0287257    0.0041120
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0137755   -0.0330238    0.0054727
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0155907   -0.0378532    0.0066718
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0157130   -0.0077623    0.0391884
15-18 months   ki1000108-IRC              INDIA                          Female               NA                 0.0012900   -0.0150687    0.0176488
15-18 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0009657   -0.0120888    0.0101575
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0144272   -0.0008621    0.0297166
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0095551   -0.0033615    0.0224717
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0012100   -0.0170197    0.0145997
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0034830   -0.0056442    0.0126101
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0045534   -0.0037421    0.0128489
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0068604   -0.0221000    0.0083792
15-18 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0000751   -0.0116392    0.0117894
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0028738   -0.0093282    0.0150758
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0064694   -0.0067328    0.0196717
15-18 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0206932   -0.0425342    0.0011478
15-18 months   ki1114097-CONTENT          PERU                           Female               NA                 0.0242792    0.0073115    0.0412469
15-18 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.0057531   -0.1586547    0.1701608
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0019463   -0.0091270    0.0130196
15-18 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0020241   -0.0139641    0.0099160
15-18 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0032754   -0.0228234    0.0293742
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0006055   -0.0052582    0.0064693
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0111913   -0.0004823    0.0228650
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0007244   -0.0254788    0.0269276
18-21 months   ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0001462   -0.0106795    0.0103871
18-21 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0116521   -0.0020853    0.0253894
18-21 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.0013845   -0.0152610    0.0180300
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0051652   -0.0144613    0.0247918
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0074445   -0.0303557    0.0154667
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0021727   -0.0250200    0.0206747
18-21 months   ki1000108-IRC              INDIA                          Female               NA                -0.0056439   -0.0206058    0.0093179
18-21 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0056494   -0.0059939    0.0172928
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0039091   -0.0172671    0.0094490
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0024362   -0.0060526    0.0109250
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0088814    0.0007979    0.0169650
18-21 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0066446   -0.0056754    0.0189645
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0034102   -0.0153538    0.0085334
18-21 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0056079   -0.0143097    0.0255256
18-21 months   ki1114097-CONTENT          PERU                           Female               NA                 0.0187359    0.0039825    0.0334893
18-21 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.0429435   -0.2007846    0.2866717
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0056184   -0.0063283    0.0175651
18-21 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0029808   -0.0073531    0.0133148
18-21 months   ki1148112-LCNI-5           MALAWI                         Female               NA                -0.0024495   -0.0183521    0.0134530
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0067074   -0.0193609    0.0059460
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                -0.0093281   -0.0263365    0.0076803
21-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0077057   -0.0024398    0.0178513
21-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0116562   -0.0029019    0.0262143
21-24 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.0029959   -0.0133860    0.0193777
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0048499   -0.0220130    0.0123132
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0243745    0.0022030    0.0465460
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0065002   -0.0285563    0.0155558
21-24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0074229   -0.0078539    0.0226998
21-24 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0066288   -0.0054767    0.0187343
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0012526   -0.0115847    0.0140899
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0095020    0.0006290    0.0183750
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0075441   -0.0006866    0.0157747
21-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0038783   -0.0077728    0.0155294
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0050635   -0.0112090    0.0213360
21-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0065104   -0.0148306    0.0278514
21-24 months   ki1114097-CONTENT          PERU                           Female               NA                 0.0194853   -0.0053820    0.0443526
21-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.0438161   -0.0918643    0.1794965
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0022282   -0.0102428    0.0146992
21-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0037300   -0.0045480    0.0120080
21-24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0119451   -0.0032165    0.0271067

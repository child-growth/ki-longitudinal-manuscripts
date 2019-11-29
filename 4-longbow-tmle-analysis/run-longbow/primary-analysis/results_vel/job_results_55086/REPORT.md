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

**Intervention Variable:** earlybf

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_birthwt
* W_birthlen
* single
* W_nrooms
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                   country                        earlybf    n_cell       n  outcome_variable 
-------------  ------------------------  -----------------------------  --------  -------  ------  -----------------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1             152     245  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0              93     245  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1             100     218  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0             118     218  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED         INDIA                          1             142     238  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED         INDIA                          0              96     238  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED         NEPAL                          1              94     232  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED         NEPAL                          0             138     232  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED         PERU                           1             210     282  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED         PERU                           0              72     282  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1             168     268  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0             100     268  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             200     237  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              37     237  y_rate_wtkg      
0-3 months     ki1000109-EE              PAKISTAN                       1              57     310  y_rate_wtkg      
0-3 months     ki1000109-EE              PAKISTAN                       0             253     310  y_rate_wtkg      
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1              93    1265  y_rate_wtkg      
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0            1172    1265  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     1             626     725  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     0              99     725  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal       NEPAL                          1             141     463  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal       NEPAL                          0             322     463  y_rate_wtkg      
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       1            3845    7237  y_rate_wtkg      
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       0            3392    7237  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1              54   20288  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0           20234   20288  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1            1775    2500  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0             725    2500  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1             141     232  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0              91     232  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1              95     208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0             113     208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED         INDIA                          1             137     230  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED         INDIA                          0              93     230  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED         NEPAL                          1              95     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED         NEPAL                          0             138     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED         PERU                           1             199     267  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED         PERU                           0              68     267  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1             150     240  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0              90     240  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             198     239  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              41     239  y_rate_wtkg      
3-6 months     ki1000109-EE              PAKISTAN                       1              48     267  y_rate_wtkg      
3-6 months     ki1000109-EE              PAKISTAN                       0             219     267  y_rate_wtkg      
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1              86    1118  y_rate_wtkg      
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0            1032    1118  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     1             607     702  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     0              95     702  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1             128     423  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0             295     423  y_rate_wtkg      
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       1            2930    5436  y_rate_wtkg      
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       0            2506    5436  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1              27   12720  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0           12693   12720  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     1            1304    1818  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     0             514    1818  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     1             136     223  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     0              87     223  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED         BRAZIL                         1              91     198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED         BRAZIL                         0             107     198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED         INDIA                          1             138     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED         INDIA                          0              92     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED         NEPAL                          1              95     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED         NEPAL                          0             135     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED         PERU                           1             179     245  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED         PERU                           0              66     245  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1             138     227  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0              89     227  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             188     225  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              37     225  y_rate_wtkg      
6-9 months     ki1000109-EE              PAKISTAN                       1              54     292  y_rate_wtkg      
6-9 months     ki1000109-EE              PAKISTAN                       0             238     292  y_rate_wtkg      
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          1              90    1138  y_rate_wtkg      
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          0            1048    1138  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     1             599     693  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     0              94     693  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal       NEPAL                          1             127     429  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal       NEPAL                          0             302     429  y_rate_wtkg      
6-9 months     ki1126311-ZVITAMBO        ZIMBABWE                       1            2658    4941  y_rate_wtkg      
6-9 months     ki1126311-ZVITAMBO        ZIMBABWE                       0            2283    4941  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     1            2029    3073  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     0            1044    3073  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     1             137     224  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     0              87     224  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED         BRAZIL                         1              89     194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED         BRAZIL                         0             105     194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED         INDIA                          1             135     227  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED         INDIA                          0              92     227  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED         NEPAL                          1              95     229  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED         NEPAL                          0             134     229  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED         PERU                           1             173     235  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED         PERU                           0              62     235  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1             138     230  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0              92     230  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             188     224  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              36     224  y_rate_wtkg      
9-12 months    ki1000109-EE              PAKISTAN                       1              57     315  y_rate_wtkg      
9-12 months    ki1000109-EE              PAKISTAN                       0             258     315  y_rate_wtkg      
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          1              86    1141  y_rate_wtkg      
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          0            1055    1141  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     1             588     683  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     0              95     683  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal       NEPAL                          1             118     410  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal       NEPAL                          0             292     410  y_rate_wtkg      
9-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       1            2396    4476  y_rate_wtkg      
9-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       0            2080    4476  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1            2262    3518  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0            1256    3518  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     1             127     211  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     0              84     211  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED         BRAZIL                         1              86     184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED         BRAZIL                         0              98     184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED         INDIA                          1             135     226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED         INDIA                          0              91     226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED         NEPAL                          1              95     230  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED         NEPAL                          0             135     230  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED         PERU                           1             163     224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED         PERU                           0              61     224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1             136     225  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0              89     225  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             190     226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              36     226  y_rate_wtkg      
12-15 months   ki1000109-EE              PAKISTAN                       1              55     290  y_rate_wtkg      
12-15 months   ki1000109-EE              PAKISTAN                       0             235     290  y_rate_wtkg      
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          1              85    1165  y_rate_wtkg      
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          0            1080    1165  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     1             571     666  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     0              95     666  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal       NEPAL                          1             120     409  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal       NEPAL                          0             289     409  y_rate_wtkg      
12-15 months   ki1126311-ZVITAMBO        ZIMBABWE                       1             841    1620  y_rate_wtkg      
12-15 months   ki1126311-ZVITAMBO        ZIMBABWE                       0             779    1620  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     1            2278    3551  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     0            1273    3551  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     1             128     211  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     0              83     211  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED         BRAZIL                         1              85     175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED         BRAZIL                         0              90     175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED         INDIA                          1             135     226  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED         INDIA                          0              91     226  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED         NEPAL                          1              95     227  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED         NEPAL                          0             132     227  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED         PERU                           1             155     214  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED         PERU                           0              59     214  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1             133     222  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0              89     222  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             188     220  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              32     220  y_rate_wtkg      
15-18 months   ki1000109-EE              PAKISTAN                       1              52     270  y_rate_wtkg      
15-18 months   ki1000109-EE              PAKISTAN                       0             218     270  y_rate_wtkg      
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          1              88    1171  y_rate_wtkg      
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          0            1083    1171  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     1             519     605  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     0              86     605  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal       NEPAL                          1             132     434  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal       NEPAL                          0             302     434  y_rate_wtkg      
15-18 months   ki1126311-ZVITAMBO        ZIMBABWE                       1             557    1039  y_rate_wtkg      
15-18 months   ki1126311-ZVITAMBO        ZIMBABWE                       0             482    1039  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     1            2261    3510  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     0            1249    3510  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     1             126     208  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     0              82     208  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED         BRAZIL                         1              80     167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED         BRAZIL                         0              87     167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED         INDIA                          1             134     226  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED         INDIA                          0              92     226  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED         NEPAL                          1              95     227  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED         NEPAL                          0             132     227  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED         PERU                           1             147     202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED         PERU                           0              55     202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1             140     230  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0              90     230  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             177     208  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              31     208  y_rate_wtkg      
18-21 months   ki1000109-EE              PAKISTAN                       1              52     250  y_rate_wtkg      
18-21 months   ki1000109-EE              PAKISTAN                       0             198     250  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     1             470     547  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     0              77     547  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal       NEPAL                          1             123     408  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal       NEPAL                          0             285     408  y_rate_wtkg      
18-21 months   ki1126311-ZVITAMBO        ZIMBABWE                       1             301     561  y_rate_wtkg      
18-21 months   ki1126311-ZVITAMBO        ZIMBABWE                       0             260     561  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     1             126     206  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     0              80     206  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED         BRAZIL                         1              77     165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED         BRAZIL                         0              88     165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED         INDIA                          1             133     226  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED         INDIA                          0              93     226  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED         NEPAL                          1              94     227  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED         NEPAL                          0             133     227  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED         PERU                           1             139     189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED         PERU                           0              50     189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1             142     232  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0              90     232  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             172     206  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              34     206  y_rate_wtkg      
21-24 months   ki1000109-EE              PAKISTAN                       1              21     103  y_rate_wtkg      
21-24 months   ki1000109-EE              PAKISTAN                       0              82     103  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1             425     493  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0              68     493  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal       NEPAL                          1             100     319  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal       NEPAL                          0             219     319  y_rate_wtkg      
21-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1             153     267  y_rate_wtkg      
21-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0             114     267  y_rate_wtkg      


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH



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




# Results Detail

## Results Plots
![](/tmp/2bb44f8c-f7c9-4895-a342-4f7876c281e6/245acd1f-49dd-42bb-8b1f-0e7ffd146f41/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2bb44f8c-f7c9-4895-a342-4f7876c281e6/245acd1f-49dd-42bb-8b1f-0e7ffd146f41/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2bb44f8c-f7c9-4895-a342-4f7876c281e6/245acd1f-49dd-42bb-8b1f-0e7ffd146f41/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.8908114   0.8601493   0.9214734
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.8629470   0.8281129   0.8977811
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                1.0750895   1.0285855   1.1215936
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                1.0656878   1.0162731   1.1151026
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    NA                0.7487371   0.7215222   0.7759520
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    NA                0.7705021   0.7326816   0.8083226
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                0.9445889   0.9035175   0.9856604
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                0.9649442   0.9292784   1.0006099
0-3 months     ki0047075b-MAL-ED         PERU                           1                    NA                0.9605572   0.9313969   0.9897175
0-3 months     ki0047075b-MAL-ED         PERU                           0                    NA                0.9960722   0.9475089   1.0446355
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.9448207   0.9118976   0.9777439
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.9465055   0.9025703   0.9904406
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8863581   0.8534914   0.9192248
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8754620   0.7907247   0.9601993
0-3 months     ki1000109-EE              PAKISTAN                       1                    NA                0.7093504   0.6497858   0.7689149
0-3 months     ki1000109-EE              PAKISTAN                       0                    NA                0.6912086   0.6658718   0.7165455
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.7901883   0.7338365   0.8465401
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.7901240   0.7705705   0.8096776
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.8858691   0.8705627   0.9011755
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.8694367   0.8261813   0.9126921
0-3 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.8462425   0.8134025   0.8790826
0-3 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.8241785   0.8028840   0.8454730
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.9585195   0.9512774   0.9657616
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.9428561   0.9348697   0.9508425
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.6712534   0.6663850   0.6761217
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.8581369   0.8550726   0.8612011
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.7458073   0.7300328   0.7615818
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.7221085   0.6968427   0.7473743
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.4736728   0.4514399   0.4959058
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.4788665   0.4524470   0.5052860
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.5934919   0.5411113   0.6458725
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.5645969   0.5266468   0.6025469
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    NA                0.4407575   0.4193726   0.4621425
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    NA                0.4533651   0.4232209   0.4835093
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                0.4954454   0.4670950   0.5237958
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                0.5398620   0.5119477   0.5677763
3-6 months     ki0047075b-MAL-ED         PERU                           1                    NA                0.4984940   0.4758240   0.5211640
3-6 months     ki0047075b-MAL-ED         PERU                           0                    NA                0.5049219   0.4717703   0.5380735
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.4650501   0.4322811   0.4978191
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.4626794   0.4201838   0.5051750
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4454308   0.4195782   0.4712834
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5088210   0.4413144   0.5763275
3-6 months     ki1000109-EE              PAKISTAN                       1                    NA                0.4739732   0.4378686   0.5100777
3-6 months     ki1000109-EE              PAKISTAN                       0                    NA                0.4765973   0.4545578   0.4986367
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.4493490   0.4218522   0.4768458
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.4502473   0.4365374   0.4639572
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.4942252   0.4822030   0.5062474
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.5195309   0.4903003   0.5487616
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.5290454   0.4987420   0.5593488
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.4885182   0.4726959   0.5043405
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.4772952   0.4707219   0.4838685
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.4808626   0.4735250   0.4882001
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.4253652   0.4170643   0.4336661
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.4414193   0.4383771   0.4444614
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.4403928   0.4292984   0.4514872
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.4358501   0.4222293   0.4494709
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.2315892   0.2136486   0.2495298
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.2612829   0.2358154   0.2867504
6-9 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.3665343   0.3271162   0.4059524
6-9 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.3971245   0.3622347   0.4320143
6-9 months     ki0047075b-MAL-ED         INDIA                          1                    NA                0.2243097   0.2068244   0.2417950
6-9 months     ki0047075b-MAL-ED         INDIA                          0                    NA                0.2400797   0.2127522   0.2674072
6-9 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2563535   0.2356987   0.2770084
6-9 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                0.2752190   0.2546566   0.2957814
6-9 months     ki0047075b-MAL-ED         PERU                           1                    NA                0.2613490   0.2429372   0.2797609
6-9 months     ki0047075b-MAL-ED         PERU                           0                    NA                0.2673220   0.2373072   0.2973368
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.2536061   0.2253759   0.2818362
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.2690068   0.2364574   0.3015561
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2470465   0.2238345   0.2702585
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1816139   0.0962485   0.2669792
6-9 months     ki1000109-EE              PAKISTAN                       1                    NA                0.2479702   0.2105280   0.2854124
6-9 months     ki1000109-EE              PAKISTAN                       0                    NA                0.2550459   0.2381961   0.2718958
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.2126397   0.1928769   0.2324025
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.2101201   0.1949410   0.2252992
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.2648600   0.2534065   0.2763134
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.2888751   0.2617550   0.3159952
6-9 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1792147   0.1554470   0.2029824
6-9 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.1900199   0.1744394   0.2056004
6-9 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.2565904   0.2498663   0.2633144
6-9 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.2606695   0.2536513   0.2676876
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.2386583   0.2323631   0.2449535
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.2419293   0.2328222   0.2510365
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1681851   0.1521714   0.1841988
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1828508   0.1573199   0.2083818
9-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.2832802   0.2345356   0.3320248
9-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.2863920   0.2438401   0.3289439
9-12 months    ki0047075b-MAL-ED         INDIA                          1                    NA                0.1793062   0.1611055   0.1975070
9-12 months    ki0047075b-MAL-ED         INDIA                          0                    NA                0.1784711   0.1548319   0.2021104
9-12 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                0.1972945   0.1784261   0.2161629
9-12 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                0.1784242   0.1571009   0.1997475
9-12 months    ki0047075b-MAL-ED         PERU                           1                    NA                0.1896211   0.1716689   0.2075732
9-12 months    ki0047075b-MAL-ED         PERU                           0                    NA                0.1870387   0.1572437   0.2168337
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.2061899   0.1772327   0.2351470
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.2217761   0.1862764   0.2572759
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1626283   0.1397790   0.1854776
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1884959   0.1419220   0.2350697
9-12 months    ki1000109-EE              PAKISTAN                       1                    NA                0.2327478   0.1915855   0.2739100
9-12 months    ki1000109-EE              PAKISTAN                       0                    NA                0.2514907   0.2325442   0.2704372
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.1692685   0.0837353   0.2548018
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.1964385   0.1888418   0.2040353
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.1951523   0.1837344   0.2065702
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.2147116   0.1912765   0.2381467
9-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1538936   0.1261780   0.1816093
9-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.1411378   0.1253360   0.1569396
9-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.1771458   0.1706110   0.1836805
9-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.1796463   0.1724919   0.1868007
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.1534454   0.1484500   0.1584408
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.1558393   0.1487843   0.1628943
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1380152   0.1156701   0.1603603
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1323249   0.1102098   0.1544401
12-15 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.1978730   0.1629906   0.2327554
12-15 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.2269749   0.1905943   0.2633554
12-15 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.1708285   0.1495663   0.1920907
12-15 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.1751223   0.1505201   0.1997246
12-15 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.1449816   0.1205334   0.1694298
12-15 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.1577396   0.1347512   0.1807281
12-15 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.1365807   0.1167385   0.1564230
12-15 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.1556311   0.1250244   0.1862378
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.1809501   0.1439867   0.2179135
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.2056752   0.1668284   0.2445221
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1659724   0.1388938   0.1930509
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1265307   0.0667075   0.1863539
12-15 months   ki1000109-EE              PAKISTAN                       1                    NA                0.1331122   0.0993293   0.1668952
12-15 months   ki1000109-EE              PAKISTAN                       0                    NA                0.1385560   0.1177332   0.1593788
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.1918515   0.1500309   0.2336721
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.1851863   0.1759977   0.1943748
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.1656222   0.1544987   0.1767457
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.1540806   0.1220495   0.1861117
12-15 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.2006748   0.1694046   0.2319451
12-15 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.1662868   0.1511952   0.1813784
12-15 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.1474597   0.1354553   0.1594641
12-15 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.1529635   0.1405607   0.1653662
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.1291751   0.1241007   0.1342495
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.1330126   0.1258022   0.1402230
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1456280   0.1256310   0.1656250
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1407692   0.1159379   0.1656005
15-18 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.1995582   0.1556104   0.2435059
15-18 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.2098836   0.1779069   0.2418602
15-18 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.1775186   0.1585139   0.1965233
15-18 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.1434718   0.1191426   0.1678010
15-18 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.1701828   0.1455116   0.1948541
15-18 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.1725092   0.1517788   0.1932396
15-18 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.1554222   0.1334874   0.1773570
15-18 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.1217582   0.0847548   0.1587617
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.2325404   0.1963515   0.2687293
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.2110424   0.1648364   0.2572485
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1475727   0.1226455   0.1724998
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1156868   0.0532019   0.1781717
15-18 months   ki1000109-EE              PAKISTAN                       1                    NA                0.0868443   0.0548901   0.1187985
15-18 months   ki1000109-EE              PAKISTAN                       0                    NA                0.0861906   0.0695841   0.1027971
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.1870078   0.0844646   0.2895510
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.1766685   0.1637986   0.1895383
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.1587266   0.1475592   0.1698940
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.1811739   0.1504354   0.2119123
15-18 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.2540295   0.2225815   0.2854776
15-18 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.2347211   0.2158876   0.2535545
15-18 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.1394196   0.1233760   0.1554632
15-18 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.1259327   0.1084156   0.1434497
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.1582445   0.1523890   0.1641001
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.1615085   0.1539360   0.1690811
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1430495   0.1236670   0.1624321
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1422600   0.1107785   0.1737415
18-21 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.1581160   0.1195244   0.1967075
18-21 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.1567583   0.1263400   0.1871765
18-21 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.1659942   0.1470598   0.1849287
18-21 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.1796857   0.1551559   0.2042156
18-21 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.1566902   0.1341584   0.1792220
18-21 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.1400895   0.1142183   0.1659608
18-21 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.1568958   0.1335200   0.1802716
18-21 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.1675537   0.1359440   0.1991634
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.1868240   0.1537288   0.2199192
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.1740010   0.1266845   0.2213175
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1436521   0.1159931   0.1713112
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1568898   0.1000870   0.2136926
18-21 months   ki1000109-EE              PAKISTAN                       1                    NA                0.1519148   0.1126066   0.1912229
18-21 months   ki1000109-EE              PAKISTAN                       0                    NA                0.1253063   0.1073796   0.1432330
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.1389892   0.1278469   0.1501315
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.1659847   0.1314328   0.2005367
18-21 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1317102   0.1018968   0.1615236
18-21 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.1415137   0.1219149   0.1611125
18-21 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.1365049   0.1117732   0.1612367
18-21 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.1118466   0.0825676   0.1411256
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1527155   0.1346382   0.1707928
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1519867   0.1241482   0.1798251
21-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.1367023   0.1063960   0.1670086
21-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.1494165   0.1131039   0.1857292
21-24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.1553712   0.1376184   0.1731241
21-24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.1571901   0.1374574   0.1769228
21-24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.1565883   0.1228755   0.1903010
21-24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.1764660   0.1521172   0.2008147
21-24 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.1770591   0.1528225   0.2012957
21-24 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.1943573   0.1608114   0.2279033
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.1894154   0.1619002   0.2169305
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.1831586   0.1392409   0.2270764
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1406820   0.1093194   0.1720446
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1145623   0.0640088   0.1651158
21-24 months   ki1000109-EE              PAKISTAN                       1                    NA                0.1624656   0.1109298   0.2140015
21-24 months   ki1000109-EE              PAKISTAN                       0                    NA                0.1954092   0.1695933   0.2212251
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.1759574   0.1619977   0.1899171
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.1742951   0.1485058   0.2000845
21-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1725846   0.1278348   0.2173343
21-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.1717495   0.1408520   0.2026470
21-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.0905757   0.0469549   0.1341965
21-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.1033356   0.0618017   0.1448695


### Parameter: E(Y)


agecat         studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.8791935   0.8560450   0.9023419
0-3 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                1.0647180   1.0304826   1.0989534
0-3 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                0.7594406   0.7372368   0.7816445
0-3 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.9569501   0.9301779   0.9837223
0-3 months     ki0047075b-MAL-ED         PERU                           NA                   NA                0.9700715   0.9450349   0.9951081
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.9445993   0.9181120   0.9710866
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8846013   0.8543673   0.9148354
0-3 months     ki1000109-EE              PAKISTAN                       NA                   NA                0.6951621   0.6718506   0.7184737
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.7908355   0.7705160   0.8111550
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.8301156   0.8122447   0.8479864
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.9505874   0.9451417   0.9560330
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.8576797   0.8546652   0.8606941
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.7391078   0.7253570   0.7528586
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.4750550   0.4583279   0.4917821
3-6 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.5781976   0.5469697   0.6094254
3-6 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                0.4452214   0.4276818   0.4627610
3-6 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.5217163   0.5015380   0.5418946
3-6 months     ki0047075b-MAL-ED         PERU                           NA                   NA                0.4982335   0.4792789   0.5171881
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.4643542   0.4384657   0.4902426
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4571297   0.4330666   0.4811928
3-6 months     ki1000109-EE              PAKISTAN                       NA                   NA                0.4724434   0.4532180   0.4916688
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.4502075   0.4368094   0.4636057
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.5009000   0.4864085   0.5153916
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.4790582   0.4742051   0.4839113
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.4413738   0.4384031   0.4443445
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.4391655   0.4303725   0.4479585
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.2431588   0.2285845   0.2577331
6-9 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.3831499   0.3570859   0.4092138
6-9 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                0.2318230   0.2168658   0.2467803
6-9 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.2695733   0.2550952   0.2840514
6-9 months     ki0047075b-MAL-ED         PERU                           NA                   NA                0.2613933   0.2459015   0.2768851
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.2578911   0.2365872   0.2791950
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2383604   0.2142762   0.2624446
6-9 months     ki1000109-EE              PAKISTAN                       NA                   NA                0.2532255   0.2380911   0.2683599
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.2097690   0.1949147   0.2246234
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.1865464   0.1734825   0.1996102
6-9 months     ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.2585007   0.2536752   0.2633261
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.2397565   0.2344749   0.2450382
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1733191   0.1596035   0.1870348
9-12 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.2845923   0.2527896   0.3163950
9-12 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                0.1788440   0.1647878   0.1929001
9-12 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.1859920   0.1715885   0.2003955
9-12 months    ki0047075b-MAL-ED         PERU                           NA                   NA                0.1874806   0.1721694   0.2027919
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.2149763   0.1926543   0.2372984
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1668888   0.1466505   0.1871271
9-12 months    ki1000109-EE              PAKISTAN                       NA                   NA                0.2478957   0.2309626   0.2648289
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.1943224   0.1874198   0.2012249
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.1427958   0.1290511   0.1565406
9-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.1789635   0.1741446   0.1837825
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.1545451   0.1502955   0.1587946
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1352870   0.1194402   0.1511339
12-15 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.2101946   0.1853699   0.2350192
12-15 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.1739561   0.1580675   0.1898447
12-15 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.1526939   0.1360899   0.1692979
12-15 months   ki0047075b-MAL-ED         PERU                           NA                   NA                0.1417390   0.1250455   0.1584325
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.1899109   0.1643460   0.2154759
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1594440   0.1347422   0.1841458
12-15 months   ki1000109-EE              PAKISTAN                       NA                   NA                0.1377914   0.1197584   0.1558243
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.1851225   0.1777268   0.1925183
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.1742426   0.1602797   0.1882055
12-15 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.1495507   0.1409004   0.1582009
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.1304878   0.1263700   0.1346055
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1428319   0.1271516   0.1585122
15-18 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.2034195   0.1767881   0.2300509
15-18 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.1625746   0.1476285   0.1775207
15-18 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.1734910   0.1577405   0.1892416
15-18 months   ki0047075b-MAL-ED         PERU                           NA                   NA                0.1461889   0.1273267   0.1650511
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.2237870   0.1951442   0.2524298
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1428022   0.1198308   0.1657736
15-18 months   ki1000109-EE              PAKISTAN                       NA                   NA                0.0866212   0.0721726   0.1010698
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.1775870   0.1644275   0.1907466
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.2403527   0.2240823   0.2566231
15-18 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.1334789   0.1218659   0.1450919
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.1594949   0.1548064   0.1641834
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1430007   0.1260081   0.1599934
18-21 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.1606491   0.1365241   0.1847741
18-21 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.1726665   0.1577530   0.1875800
18-21 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.1474997   0.1298460   0.1651535
18-21 months   ki0047075b-MAL-ED         PERU                           NA                   NA                0.1615652   0.1425950   0.1805355
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.1786507   0.1520523   0.2052491
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1463538   0.1214615   0.1712461
18-21 months   ki1000109-EE              PAKISTAN                       NA                   NA                0.1311151   0.1151269   0.1471032
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.1384991   0.1222469   0.1547513
18-21 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.1246231   0.1059024   0.1433438
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1524224   0.1372351   0.1676097
21-24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.1434900   0.1201394   0.1668407
21-24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.1562703   0.1431057   0.1694349
21-24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.1690412   0.1491342   0.1889482
21-24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                0.1814671   0.1617319   0.2012023
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.1885171   0.1645495   0.2124846
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1413187   0.1136523   0.1689851
21-24 months   ki1000109-EE              PAKISTAN                       NA                   NA                0.1923085   0.1695993   0.2150177
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.1718762   0.1464347   0.1973177
21-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.0931033   0.0628952   0.1233114


### Parameter: ATE


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0278643   -0.0744042    0.0186755
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0094017   -0.0772762    0.0584728
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    1                  0.0217650   -0.0249231    0.0684531
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0203553   -0.0341819    0.0748924
0-3 months     ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU                           0                    1                  0.0355150   -0.0210511    0.0920810
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0016847   -0.0527014    0.0560708
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0108961   -0.1019581    0.0801658
0-3 months     ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE              PAKISTAN                       0                    1                 -0.0181417   -0.0822868    0.0460033
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0000643   -0.0525189    0.0523904
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 -0.0164324   -0.0620735    0.0292087
0-3 months     ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0220640   -0.0612301    0.0171021
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 -0.0156634   -0.0262331   -0.0050937
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.1868835    0.1813264    0.1924406
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.0236988   -0.0527995    0.0054018
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0051937   -0.0296440    0.0400314
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0288950   -0.0936370    0.0358469
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    1                  0.0126076   -0.0244192    0.0496343
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0444166    0.0045290    0.0843043
3-6 months     ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU                           0                    1                  0.0064279   -0.0338598    0.0467156
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0023708   -0.0559437    0.0512022
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0633901   -0.0091752    0.1359555
3-6 months     ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE              PAKISTAN                       0                    1                  0.0026241   -0.0395450    0.0447932
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    1                  0.0008983   -0.0254448    0.0272413
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.0253057   -0.0064580    0.0570695
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0405272   -0.0744345   -0.0066200
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                  0.0035673   -0.0062618    0.0133965
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.0160541    0.0071632    0.0249450
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.0045427   -0.0222039    0.0131185
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0296937   -0.0021684    0.0615558
6-9 months     ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0305902   -0.0221197    0.0833002
6-9 months     ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         INDIA                          0                    1                  0.0157700   -0.0165938    0.0481337
6-9 months     ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0188655   -0.0109048    0.0486357
6-9 months     ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         PERU                           0                    1                  0.0059730   -0.0296915    0.0416375
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0154007   -0.0278584    0.0586598
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0654326   -0.1537716    0.0229063
6-9 months     ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE              PAKISTAN                       0                    1                  0.0070757   -0.0340281    0.0481796
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0025196   -0.0205975    0.0155584
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.0240151   -0.0054081    0.0534384
6-9 months     ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.0108052   -0.0176763    0.0392867
6-9 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                  0.0040791   -0.0056581    0.0138163
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.0032710   -0.0076150    0.0141571
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0146658   -0.0157501    0.0450817
9-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0031118   -0.0616908    0.0679144
9-12 months    ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0008351   -0.0311762    0.0295061
9-12 months    ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.0188703   -0.0476812    0.0099407
9-12 months    ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         PERU                           0                    1                 -0.0025823   -0.0374695    0.0323049
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0155863   -0.0303698    0.0615424
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0258676   -0.0263517    0.0780868
9-12 months    ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE              PAKISTAN                       0                    1                  0.0187430   -0.0266399    0.0641258
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                  0.0271700   -0.0614318    0.1157718
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.0195593   -0.0063696    0.0454882
9-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0127558   -0.0447160    0.0192044
9-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                  0.0025005   -0.0072056    0.0122067
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.0023939   -0.0059042    0.0106920
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0056903   -0.0378309    0.0264503
12-15 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0291019   -0.0222752    0.0804790
12-15 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.0042939   -0.0285687    0.0371565
12-15 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0127580   -0.0210035    0.0465195
12-15 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.0190503   -0.0173070    0.0554077
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0247252   -0.0320653    0.0815156
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0394417   -0.1050831    0.0261997
12-15 months   ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE              PAKISTAN                       0                    1                  0.0054438   -0.0343066    0.0451943
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0066652   -0.0532013    0.0398709
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 -0.0115416   -0.0455114    0.0224283
12-15 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0343880   -0.0694729    0.0006969
12-15 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                  0.0055038   -0.0118036    0.0228111
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.0038375   -0.0049770    0.0126520
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0048588   -0.0370767    0.0273590
15-18 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0103254   -0.0444578    0.0651086
15-18 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0340468   -0.0655277   -0.0025658
15-18 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0023263   -0.0301377    0.0347904
15-18 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         PERU                           0                    1                 -0.0336640   -0.0767959    0.0094679
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0214980   -0.0802738    0.0372779
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0318859   -0.0992615    0.0354898
15-18 months   ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE              PAKISTAN                       0                    1                 -0.0006537   -0.0369756    0.0356682
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0103393   -0.1125422    0.0918636
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.0224472   -0.0102797    0.0551742
15-18 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0193085   -0.0558339    0.0172169
15-18 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 -0.0134870   -0.0373901    0.0104162
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.0032640   -0.0061542    0.0126822
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0007895   -0.0379115    0.0363324
18-21 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0013577   -0.0507481    0.0480327
18-21 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.0136915   -0.0174066    0.0447896
18-21 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.0166007   -0.0509864    0.0177851
18-21 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.0106579   -0.0286297    0.0499455
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0128230   -0.0718374    0.0461914
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0132377   -0.0500809    0.0765562
18-21 months   ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE              PAKISTAN                       0                    1                 -0.0266085   -0.0699497    0.0167327
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.0269956   -0.0092680    0.0632592
18-21 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.0098035   -0.0259240    0.0455310
18-21 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 -0.0246583   -0.0633534    0.0140368
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0007289   -0.0341729    0.0327152
21-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0127142   -0.0353112    0.0607397
21-24 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.0018189   -0.0247904    0.0284282
21-24 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0198777   -0.0217031    0.0614585
21-24 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.0172982   -0.0241504    0.0587468
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0062567   -0.0581187    0.0456052
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0261197   -0.0853875    0.0331481
21-24 months   ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000109-EE              PAKISTAN                       0                    1                  0.0329436   -0.0250840    0.0909713
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 -0.0016623   -0.0309450    0.0276205
21-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0008351   -0.0553002    0.0536301
21-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                  0.0127599   -0.0482252    0.0737451


### Parameter: PAR


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0116179   -0.0294226    0.0061869
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0103715   -0.0470737    0.0263307
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0107036   -0.0083073    0.0297144
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0123612   -0.0201196    0.0448419
0-3 months     ki0047075b-MAL-ED         PERU                           1                    NA                 0.0095143   -0.0050126    0.0240413
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0002214   -0.0204030    0.0199601
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0017568   -0.0153825    0.0118690
0-3 months     ki1000109-EE              PAKISTAN                       1                    NA                -0.0141882   -0.0677909    0.0394145
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0006472   -0.0476037    0.0488981
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0013472   -0.0075172    0.0048229
0-3 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0161269   -0.0433801    0.0111263
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0079321   -0.0129409   -0.0029234
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.1864263    0.1810020    0.1918507
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0066995   -0.0152576    0.0018586
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0013821   -0.0122687    0.0150330
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0152943   -0.0505746    0.0199859
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0044639   -0.0104860    0.0194138
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0262709    0.0024803    0.0500615
3-6 months     ki0047075b-MAL-ED         PERU                           1                    NA                -0.0002605   -0.0106063    0.0100852
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0006960   -0.0208692    0.0194773
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0116989   -0.0005735    0.0239713
3-6 months     ki1000109-EE              PAKISTAN                       1                    NA                -0.0015298   -0.0361821    0.0331225
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0008585   -0.0239836    0.0257006
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0038292   -0.0004484    0.0081068
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0281454   -0.0520545   -0.0042363
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0017629   -0.0027473    0.0062732
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0160086    0.0073354    0.0246819
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0012273   -0.0062202    0.0037656
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0115696   -0.0011398    0.0242791
6-9 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0166156   -0.0119462    0.0451773
6-9 months     ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0075133   -0.0051801    0.0202068
6-9 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0132197   -0.0043213    0.0307608
6-9 months     ki0047075b-MAL-ED         PERU                           1                    NA                 0.0000442   -0.0096718    0.0097603
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0042850   -0.0126714    0.0212415
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0086861   -0.0234933    0.0061211
6-9 months     ki1000109-EE              PAKISTAN                       1                    NA                 0.0052553   -0.0290901    0.0396008
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0028706   -0.0193923    0.0136510
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0026497   -0.0012950    0.0065944
6-9 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0073317   -0.0127853    0.0274486
6-9 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0019103   -0.0025964    0.0064170
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0010982   -0.0026089    0.0048052
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0051341   -0.0066230    0.0168911
9-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0013121   -0.0338938    0.0365179
9-12 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0004623   -0.0126668    0.0117423
9-12 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0113025   -0.0281615    0.0055566
9-12 months    ki0047075b-MAL-ED         PERU                           1                    NA                -0.0021404   -0.0114658    0.0071850
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0087865   -0.0094595    0.0270324
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0042605   -0.0036010    0.0121220
9-12 months    ki1000109-EE              PAKISTAN                       1                    NA                 0.0151480   -0.0229330    0.0532289
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0250538   -0.0603086    0.1104163
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0026926   -0.0008929    0.0062781
9-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0110978   -0.0339248    0.0117293
9-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0018177   -0.0026856    0.0063210
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0010997   -0.0018801    0.0040795
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0027281   -0.0157060    0.0102497
12-15 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0123216   -0.0150079    0.0396511
12-15 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0031276   -0.0101765    0.0164318
12-15 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0077123   -0.0121194    0.0275439
12-15 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0051583   -0.0047476    0.0150642
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0089608   -0.0132909    0.0312126
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0065284   -0.0170212    0.0039644
12-15 months   ki1000109-EE              PAKISTAN                       1                    NA                 0.0046792   -0.0279015    0.0372598
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0067290   -0.0504217    0.0369637
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0015619   -0.0063457    0.0032218
12-15 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0264322   -0.0513284   -0.0015361
12-15 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0020910   -0.0062222    0.0104042
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0013126   -0.0018245    0.0044497
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0027962   -0.0157067    0.0101144
15-18 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0038613   -0.0246162    0.0323389
15-18 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0149440   -0.0277392   -0.0021488
15-18 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0033082   -0.0155845    0.0222008
15-18 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0092333   -0.0210976    0.0026309
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0087534   -0.0325693    0.0150625
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0047704   -0.0139026    0.0043617
15-18 months   ki1000109-EE              PAKISTAN                       1                    NA                -0.0002231   -0.0301691    0.0297228
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0094208   -0.1062867    0.0874452
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0024707   -0.0021967    0.0071381
15-18 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0136768   -0.0391378    0.0117841
15-18 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0059407   -0.0169818    0.0051004
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0012504   -0.0020452    0.0045460
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0000488   -0.0143533    0.0142557
18-21 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0025331   -0.0236888    0.0287551
18-21 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0066722   -0.0060094    0.0193539
18-21 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0091905   -0.0292158    0.0108348
18-21 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0046695   -0.0059704    0.0153094
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0081733   -0.0314379    0.0150913
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0027017   -0.0063234    0.0117268
18-21 months   ki1000109-EE              PAKISTAN                       1                    NA                -0.0207997   -0.0562917    0.0146923
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0036717   -0.0012596    0.0086031
18-21 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0067889   -0.0182660    0.0318438
18-21 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0118818   -0.0300230    0.0062593
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0002931   -0.0131117    0.0125254
21-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0067878   -0.0185245    0.0321000
21-24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0008991   -0.0100080    0.0118062
21-24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0124529   -0.0119148    0.0368207
21-24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0044080   -0.0065999    0.0154159
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0008983   -0.0209961    0.0191995
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0006367   -0.0100084    0.0112818
21-24 months   ki1000109-EE              PAKISTAN                       1                    NA                 0.0298429   -0.0171762    0.0768620
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0009073   -0.0049671    0.0031524
21-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0007084   -0.0381061    0.0366893
21-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0025276   -0.0237555    0.0288107

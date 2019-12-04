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
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1             151     242  y_rate_len       
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0              91     242  y_rate_len       
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1              76     168  y_rate_len       
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0              92     168  y_rate_len       
0-3 months     ki0047075b-MAL-ED         INDIA                          1             110     183  y_rate_len       
0-3 months     ki0047075b-MAL-ED         INDIA                          0              73     183  y_rate_len       
0-3 months     ki0047075b-MAL-ED         NEPAL                          1              70     156  y_rate_len       
0-3 months     ki0047075b-MAL-ED         NEPAL                          0              86     156  y_rate_len       
0-3 months     ki0047075b-MAL-ED         PERU                           1             200     265  y_rate_len       
0-3 months     ki0047075b-MAL-ED         PERU                           0              65     265  y_rate_len       
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1             134     208  y_rate_len       
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0              74     208  y_rate_len       
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             196     228  y_rate_len       
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              32     228  y_rate_len       
0-3 months     ki1000109-EE              PAKISTAN                       1              55     294  y_rate_len       
0-3 months     ki1000109-EE              PAKISTAN                       0             239     294  y_rate_len       
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1              93    1261  y_rate_len       
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0            1168    1261  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     1             623     721  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     0              98     721  y_rate_len       
0-3 months     ki1113344-GMS-Nepal       NEPAL                          1             139     462  y_rate_len       
0-3 months     ki1113344-GMS-Nepal       NEPAL                          0             323     462  y_rate_len       
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       1            3772    7074  y_rate_len       
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       0            3302    7074  y_rate_len       
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1              55   19879  y_rate_len       
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0           19824   19879  y_rate_len       
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1            1780    2517  y_rate_len       
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0             737    2517  y_rate_len       
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1             140     230  y_rate_len       
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0              90     230  y_rate_len       
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1              95     208  y_rate_len       
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0             113     208  y_rate_len       
3-6 months     ki0047075b-MAL-ED         INDIA                          1             137     230  y_rate_len       
3-6 months     ki0047075b-MAL-ED         INDIA                          0              93     230  y_rate_len       
3-6 months     ki0047075b-MAL-ED         NEPAL                          1              95     233  y_rate_len       
3-6 months     ki0047075b-MAL-ED         NEPAL                          0             138     233  y_rate_len       
3-6 months     ki0047075b-MAL-ED         PERU                           1             199     267  y_rate_len       
3-6 months     ki0047075b-MAL-ED         PERU                           0              68     267  y_rate_len       
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1             150     240  y_rate_len       
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0              90     240  y_rate_len       
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             198     239  y_rate_len       
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              41     239  y_rate_len       
3-6 months     ki1000109-EE              PAKISTAN                       1              49     272  y_rate_len       
3-6 months     ki1000109-EE              PAKISTAN                       0             223     272  y_rate_len       
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1              87    1124  y_rate_len       
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0            1037    1124  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     1             602     695  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     0              93     695  y_rate_len       
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1             127     422  y_rate_len       
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0             295     422  y_rate_len       
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       1            2948    5473  y_rate_len       
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       0            2525    5473  y_rate_len       
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1              25   12581  y_rate_len       
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0           12556   12581  y_rate_len       
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     1            1315    1840  y_rate_len       
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     0             525    1840  y_rate_len       
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     1             136     223  y_rate_len       
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     0              87     223  y_rate_len       
6-9 months     ki0047075b-MAL-ED         BRAZIL                         1              91     198  y_rate_len       
6-9 months     ki0047075b-MAL-ED         BRAZIL                         0             107     198  y_rate_len       
6-9 months     ki0047075b-MAL-ED         INDIA                          1             138     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED         INDIA                          0              92     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED         NEPAL                          1              95     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED         NEPAL                          0             135     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED         PERU                           1             179     245  y_rate_len       
6-9 months     ki0047075b-MAL-ED         PERU                           0              66     245  y_rate_len       
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1             138     227  y_rate_len       
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0              89     227  y_rate_len       
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             188     225  y_rate_len       
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              37     225  y_rate_len       
6-9 months     ki1000109-EE              PAKISTAN                       1              54     295  y_rate_len       
6-9 months     ki1000109-EE              PAKISTAN                       0             241     295  y_rate_len       
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          1              91    1144  y_rate_len       
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          0            1053    1144  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     1             595     688  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     0              93     688  y_rate_len       
6-9 months     ki1113344-GMS-Nepal       NEPAL                          1             128     432  y_rate_len       
6-9 months     ki1113344-GMS-Nepal       NEPAL                          0             304     432  y_rate_len       
6-9 months     ki1126311-ZVITAMBO        ZIMBABWE                       1            2839    5271  y_rate_len       
6-9 months     ki1126311-ZVITAMBO        ZIMBABWE                       0            2432    5271  y_rate_len       
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     1            2016    3054  y_rate_len       
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     0            1038    3054  y_rate_len       
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     1             137     224  y_rate_len       
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     0              87     224  y_rate_len       
9-12 months    ki0047075b-MAL-ED         BRAZIL                         1              89     194  y_rate_len       
9-12 months    ki0047075b-MAL-ED         BRAZIL                         0             105     194  y_rate_len       
9-12 months    ki0047075b-MAL-ED         INDIA                          1             135     227  y_rate_len       
9-12 months    ki0047075b-MAL-ED         INDIA                          0              92     227  y_rate_len       
9-12 months    ki0047075b-MAL-ED         NEPAL                          1              95     229  y_rate_len       
9-12 months    ki0047075b-MAL-ED         NEPAL                          0             134     229  y_rate_len       
9-12 months    ki0047075b-MAL-ED         PERU                           1             173     235  y_rate_len       
9-12 months    ki0047075b-MAL-ED         PERU                           0              62     235  y_rate_len       
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1             138     230  y_rate_len       
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0              92     230  y_rate_len       
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             188     224  y_rate_len       
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              36     224  y_rate_len       
9-12 months    ki1000109-EE              PAKISTAN                       1              57     316  y_rate_len       
9-12 months    ki1000109-EE              PAKISTAN                       0             259     316  y_rate_len       
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          1              86    1146  y_rate_len       
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          0            1060    1146  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     1             580     674  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     0              94     674  y_rate_len       
9-12 months    ki1113344-GMS-Nepal       NEPAL                          1             124     425  y_rate_len       
9-12 months    ki1113344-GMS-Nepal       NEPAL                          0             301     425  y_rate_len       
9-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       1            2809    5265  y_rate_len       
9-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       0            2456    5265  y_rate_len       
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1            2244    3501  y_rate_len       
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0            1257    3501  y_rate_len       
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     1             127     211  y_rate_len       
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     0              84     211  y_rate_len       
12-15 months   ki0047075b-MAL-ED         BRAZIL                         1              86     184  y_rate_len       
12-15 months   ki0047075b-MAL-ED         BRAZIL                         0              98     184  y_rate_len       
12-15 months   ki0047075b-MAL-ED         INDIA                          1             135     226  y_rate_len       
12-15 months   ki0047075b-MAL-ED         INDIA                          0              91     226  y_rate_len       
12-15 months   ki0047075b-MAL-ED         NEPAL                          1              95     230  y_rate_len       
12-15 months   ki0047075b-MAL-ED         NEPAL                          0             135     230  y_rate_len       
12-15 months   ki0047075b-MAL-ED         PERU                           1             163     224  y_rate_len       
12-15 months   ki0047075b-MAL-ED         PERU                           0              61     224  y_rate_len       
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1             136     225  y_rate_len       
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0              89     225  y_rate_len       
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             190     226  y_rate_len       
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              36     226  y_rate_len       
12-15 months   ki1000109-EE              PAKISTAN                       1              54     289  y_rate_len       
12-15 months   ki1000109-EE              PAKISTAN                       0             235     289  y_rate_len       
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          1              84    1168  y_rate_len       
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          0            1084    1168  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     1             565     660  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     0              95     660  y_rate_len       
12-15 months   ki1113344-GMS-Nepal       NEPAL                          1             125     426  y_rate_len       
12-15 months   ki1113344-GMS-Nepal       NEPAL                          0             301     426  y_rate_len       
12-15 months   ki1126311-ZVITAMBO        ZIMBABWE                       1            1144    2218  y_rate_len       
12-15 months   ki1126311-ZVITAMBO        ZIMBABWE                       0            1074    2218  y_rate_len       
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     1            2267    3549  y_rate_len       
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     0            1282    3549  y_rate_len       
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     1             128     211  y_rate_len       
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     0              83     211  y_rate_len       
15-18 months   ki0047075b-MAL-ED         BRAZIL                         1              85     175  y_rate_len       
15-18 months   ki0047075b-MAL-ED         BRAZIL                         0              90     175  y_rate_len       
15-18 months   ki0047075b-MAL-ED         INDIA                          1             135     226  y_rate_len       
15-18 months   ki0047075b-MAL-ED         INDIA                          0              91     226  y_rate_len       
15-18 months   ki0047075b-MAL-ED         NEPAL                          1              95     227  y_rate_len       
15-18 months   ki0047075b-MAL-ED         NEPAL                          0             132     227  y_rate_len       
15-18 months   ki0047075b-MAL-ED         PERU                           1             154     213  y_rate_len       
15-18 months   ki0047075b-MAL-ED         PERU                           0              59     213  y_rate_len       
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1             133     222  y_rate_len       
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0              89     222  y_rate_len       
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             185     217  y_rate_len       
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              32     217  y_rate_len       
15-18 months   ki1000109-EE              PAKISTAN                       1              52     270  y_rate_len       
15-18 months   ki1000109-EE              PAKISTAN                       0             218     270  y_rate_len       
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          1              88    1171  y_rate_len       
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          0            1083    1171  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     1             518     604  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     0              86     604  y_rate_len       
15-18 months   ki1113344-GMS-Nepal       NEPAL                          1             132     437  y_rate_len       
15-18 months   ki1113344-GMS-Nepal       NEPAL                          0             305     437  y_rate_len       
15-18 months   ki1126311-ZVITAMBO        ZIMBABWE                       1             947    1776  y_rate_len       
15-18 months   ki1126311-ZVITAMBO        ZIMBABWE                       0             829    1776  y_rate_len       
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     1            2280    3550  y_rate_len       
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     0            1270    3550  y_rate_len       
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     1             126     208  y_rate_len       
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     0              82     208  y_rate_len       
18-21 months   ki0047075b-MAL-ED         BRAZIL                         1              80     167  y_rate_len       
18-21 months   ki0047075b-MAL-ED         BRAZIL                         0              87     167  y_rate_len       
18-21 months   ki0047075b-MAL-ED         INDIA                          1             134     226  y_rate_len       
18-21 months   ki0047075b-MAL-ED         INDIA                          0              92     226  y_rate_len       
18-21 months   ki0047075b-MAL-ED         NEPAL                          1              95     227  y_rate_len       
18-21 months   ki0047075b-MAL-ED         NEPAL                          0             132     227  y_rate_len       
18-21 months   ki0047075b-MAL-ED         PERU                           1             147     202  y_rate_len       
18-21 months   ki0047075b-MAL-ED         PERU                           0              55     202  y_rate_len       
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1             140     230  y_rate_len       
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0              90     230  y_rate_len       
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             173     204  y_rate_len       
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              31     204  y_rate_len       
18-21 months   ki1000109-EE              PAKISTAN                       1              52     248  y_rate_len       
18-21 months   ki1000109-EE              PAKISTAN                       0             196     248  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     1             469     546  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     0              77     546  y_rate_len       
18-21 months   ki1113344-GMS-Nepal       NEPAL                          1             122     406  y_rate_len       
18-21 months   ki1113344-GMS-Nepal       NEPAL                          0             284     406  y_rate_len       
18-21 months   ki1126311-ZVITAMBO        ZIMBABWE                       1             728    1382  y_rate_len       
18-21 months   ki1126311-ZVITAMBO        ZIMBABWE                       0             654    1382  y_rate_len       
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     1             126     206  y_rate_len       
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     0              80     206  y_rate_len       
21-24 months   ki0047075b-MAL-ED         BRAZIL                         1              77     165  y_rate_len       
21-24 months   ki0047075b-MAL-ED         BRAZIL                         0              88     165  y_rate_len       
21-24 months   ki0047075b-MAL-ED         INDIA                          1             133     226  y_rate_len       
21-24 months   ki0047075b-MAL-ED         INDIA                          0              93     226  y_rate_len       
21-24 months   ki0047075b-MAL-ED         NEPAL                          1              94     227  y_rate_len       
21-24 months   ki0047075b-MAL-ED         NEPAL                          0             133     227  y_rate_len       
21-24 months   ki0047075b-MAL-ED         PERU                           1             139     189  y_rate_len       
21-24 months   ki0047075b-MAL-ED         PERU                           0              50     189  y_rate_len       
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1             142     232  y_rate_len       
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0              90     232  y_rate_len       
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             171     204  y_rate_len       
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              33     204  y_rate_len       
21-24 months   ki1000109-EE              PAKISTAN                       1              21     103  y_rate_len       
21-24 months   ki1000109-EE              PAKISTAN                       0              82     103  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1             422     490  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0              68     490  y_rate_len       
21-24 months   ki1113344-GMS-Nepal       NEPAL                          1             100     318  y_rate_len       
21-24 months   ki1113344-GMS-Nepal       NEPAL                          0             218     318  y_rate_len       
21-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1             527    1000  y_rate_len       
21-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0             473    1000  y_rate_len       


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
![](/tmp/5a8643cb-663d-4e96-a075-b32b33363491/d1326e54-cdc3-4e62-b3fe-69b1c63e7957/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5a8643cb-663d-4e96-a075-b32b33363491/d1326e54-cdc3-4e62-b3fe-69b1c63e7957/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5a8643cb-663d-4e96-a075-b32b33363491/d1326e54-cdc3-4e62-b3fe-69b1c63e7957/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                3.3229983   3.2422303   3.4037664
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                3.3833397   3.2708450   3.4958343
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                3.7942887   3.6234823   3.9650951
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                3.8165610   3.6655226   3.9675994
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    NA                3.3380876   3.2056407   3.4705345
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    NA                3.3639764   3.2190326   3.5089202
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                3.5325822   3.3955699   3.6695944
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                3.6927734   3.5716063   3.8139404
0-3 months     ki0047075b-MAL-ED         PERU                           1                    NA                3.0233981   2.9480760   3.0987201
0-3 months     ki0047075b-MAL-ED         PERU                           0                    NA                3.1139297   2.9734571   3.2544023
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                3.1748857   3.0483693   3.3014021
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                3.1779526   3.0229543   3.3329510
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                3.2839307   3.2030540   3.3648075
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                3.1445195   2.9115251   3.3775139
0-3 months     ki1000109-EE              PAKISTAN                       1                    NA                3.0442015   2.8595103   3.2288926
0-3 months     ki1000109-EE              PAKISTAN                       0                    NA                3.0910334   2.9948188   3.1872479
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                3.3632279   3.1893696   3.5370861
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                3.3495626   3.2989967   3.4001285
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                3.1342669   3.0955813   3.1729525
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                3.0969172   2.9888415   3.2049929
0-3 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                3.6636434   3.5799195   3.7473673
0-3 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                3.5826798   3.5163833   3.6489764
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                3.3903201   3.3606625   3.4199776
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                3.2791196   3.2471053   3.3111338
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                3.1572711   3.1362432   3.1782989
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                3.6658313   3.6553538   3.6763088
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                3.0300421   2.9694764   3.0906078
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                2.9522172   2.8572022   3.0472322
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                1.9344682   1.8654836   2.0034527
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                1.9191370   1.8415714   1.9967026
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                2.1972337   2.0832491   2.3112184
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                2.0914490   1.9816270   2.2012710
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    NA                1.9135020   1.8360879   1.9909161
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    NA                1.8676089   1.7577572   1.9774606
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                1.9356785   1.8529353   2.0184216
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                1.9944135   1.9181586   2.0706684
3-6 months     ki0047075b-MAL-ED         PERU                           1                    NA                1.9933867   1.9143395   2.0724338
3-6 months     ki0047075b-MAL-ED         PERU                           0                    NA                2.1017940   1.9807642   2.2228238
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                1.9285722   1.8234181   2.0337262
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                2.0810273   1.9588937   2.2031609
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                1.8136093   1.7393870   1.8878316
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8997974   1.7278372   2.0717576
3-6 months     ki1000109-EE              PAKISTAN                       1                    NA                2.0407334   1.8870958   2.1943710
3-6 months     ki1000109-EE              PAKISTAN                       0                    NA                2.1085308   2.0438203   2.1732414
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                1.8406837   1.6962800   1.9850874
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                1.9477226   1.9063691   1.9890760
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                1.9814966   1.9433657   2.0196276
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                2.1990747   2.0968294   2.3013201
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                1.7407452   1.6610944   1.8203960
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                1.7054405   1.6591270   1.7517541
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                1.9742516   1.9459565   2.0025468
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                1.9862161   1.9546363   2.0177959
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                1.7185794   1.6944849   1.7426740
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                1.9205700   1.9098691   1.9312708
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                1.9006995   1.8639678   1.9374311
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                1.8914391   1.8411465   1.9417317
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                1.2528236   1.1970082   1.3086389
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                1.2402938   1.1875206   1.2930669
6-9 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                1.4638581   1.3561375   1.5715787
6-9 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                1.4723889   1.3506581   1.5941198
6-9 months     ki0047075b-MAL-ED         INDIA                          1                    NA                1.1996847   1.1332068   1.2661626
6-9 months     ki0047075b-MAL-ED         INDIA                          0                    NA                1.3341354   1.2540010   1.4142699
6-9 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                1.3314749   1.2676605   1.3952893
6-9 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                1.3672861   1.3064777   1.4280945
6-9 months     ki0047075b-MAL-ED         PERU                           1                    NA                1.3204287   1.2578007   1.3830567
6-9 months     ki0047075b-MAL-ED         PERU                           0                    NA                1.3240281   1.2075540   1.4405023
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                1.3315963   1.2512303   1.4119623
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                1.4219351   1.3084653   1.5354049
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1878327   1.1005128   1.2751527
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                1.2084120   1.0311844   1.3856397
6-9 months     ki1000109-EE              PAKISTAN                       1                    NA                1.1620292   1.0567084   1.2673500
6-9 months     ki1000109-EE              PAKISTAN                       0                    NA                1.1794475   1.1253688   1.2335262
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                1.1930669   1.0659167   1.3202172
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                1.2177900   1.1923424   1.2432375
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                1.3242249   1.2931456   1.3553043
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                1.3535183   1.2573788   1.4496579
6-9 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                1.3501651   1.2688021   1.4315280
6-9 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                1.3007574   1.2488338   1.3526810
6-9 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                1.3471757   1.3200602   1.3742911
6-9 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                1.3382585   1.3081003   1.3684167
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                1.3256173   1.2996686   1.3515660
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                1.3218030   1.2883403   1.3552657
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.9614128   0.9111537   1.0116719
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                1.0370061   0.9748726   1.0991396
9-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                1.3032016   1.2059920   1.4004112
9-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                1.2880318   1.1755036   1.4005600
9-12 months    ki0047075b-MAL-ED         INDIA                          1                    NA                0.9837333   0.9347098   1.0327568
9-12 months    ki0047075b-MAL-ED         INDIA                          0                    NA                0.9959623   0.9368071   1.0551175
9-12 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                1.1000424   1.0389804   1.1611044
9-12 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                1.0842072   1.0290597   1.1393547
9-12 months    ki0047075b-MAL-ED         PERU                           1                    NA                1.1003097   1.0410550   1.1595644
9-12 months    ki0047075b-MAL-ED         PERU                           0                    NA                1.0812433   0.9777693   1.1847172
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                1.0594540   0.9827374   1.1361706
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.9648453   0.8477865   1.0819042
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8153021   0.7243498   0.9062544
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7881286   0.6003099   0.9759473
9-12 months    ki1000109-EE              PAKISTAN                       1                    NA                0.9110328   0.8291399   0.9929257
9-12 months    ki1000109-EE              PAKISTAN                       0                    NA                0.9089544   0.8686591   0.9492498
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                1.0055492   0.9012094   1.1098890
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                1.0006548   0.9610571   1.0402525
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                1.1270232   1.0987076   1.1553388
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                1.0984838   1.0228106   1.1741570
9-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.9679971   0.8976209   1.0383733
9-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                1.0073027   0.9678206   1.0467849
9-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                1.0711742   1.0446806   1.0976678
9-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                1.0924923   1.0655672   1.1194174
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                1.0637975   1.0412387   1.0863563
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                1.0855546   1.0552657   1.1158436
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.8909777   0.8377291   0.9442262
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.9501377   0.8874456   1.0128298
12-15 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                1.1436686   1.0560855   1.2312518
12-15 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                1.1207464   1.0397307   1.2017622
12-15 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.9098303   0.8592049   0.9604557
12-15 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.9089007   0.8454495   0.9723519
12-15 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.9438621   0.8836029   1.0041213
12-15 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.9462211   0.8920950   1.0003472
12-15 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.8564393   0.8060351   0.9068435
12-15 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.9836525   0.8773857   1.0899194
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.9382034   0.8675607   1.0088461
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.9100630   0.8059414   1.0141845
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8569914   0.7868746   0.9271081
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8456504   0.6756324   1.0156685
12-15 months   ki1000109-EE              PAKISTAN                       1                    NA                1.0342098   0.9602940   1.1081255
12-15 months   ki1000109-EE              PAKISTAN                       0                    NA                1.0036945   0.9661059   1.0412830
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.8137849   0.5538976   1.0736722
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.8344397   0.8023497   0.8665297
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.9707825   0.9442163   0.9973488
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.9717506   0.9078622   1.0356391
12-15 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.9110560   0.8616058   0.9605062
12-15 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.8606884   0.8222683   0.8991085
12-15 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.9021393   0.8611448   0.9431338
12-15 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.9310801   0.8889396   0.9732207
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.9422499   0.9227136   0.9617862
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.9395910   0.9132480   0.9659340
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.8155476   0.7649195   0.8661757
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.8393878   0.7821443   0.8966313
15-18 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                1.0207721   0.9313708   1.1101735
15-18 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.9812846   0.9005781   1.0619911
15-18 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.8560190   0.8088858   0.9031523
15-18 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.8271400   0.7685087   0.8857712
15-18 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.8675367   0.8012757   0.9337977
15-18 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.8237926   0.7698834   0.8777018
15-18 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.8482151   0.7976181   0.8988120
15-18 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.8739747   0.7931274   0.9548221
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.8803327   0.8105755   0.9500899
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.9068643   0.8232579   0.9904706
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6878894   0.6230682   0.7527107
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6978208   0.5100868   0.8855548
15-18 months   ki1000109-EE              PAKISTAN                       1                    NA                0.8200495   0.7612603   0.8788388
15-18 months   ki1000109-EE              PAKISTAN                       0                    NA                0.8520515   0.8123659   0.8917371
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.9389272   0.8419046   1.0359498
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.9010571   0.8729744   0.9291399
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.9127277   0.8876618   0.9377937
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.9502666   0.8926135   1.0079196
15-18 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.7900171   0.7332356   0.8467987
15-18 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.7361588   0.6882967   0.7840209
15-18 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.7866730   0.7424796   0.8308665
15-18 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.8151394   0.7666126   0.8636661
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.8536626   0.8322389   0.8750862
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.8704939   0.8456932   0.8952947
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.8290566   0.7808817   0.8772316
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.7955150   0.7477443   0.8432856
18-21 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.9722267   0.8525642   1.0918892
18-21 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.8599241   0.7781433   0.9417050
18-21 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.8749052   0.8319829   0.9178276
18-21 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.8759936   0.8161704   0.9358169
18-21 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.7909726   0.7300130   0.8519321
18-21 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.8370741   0.7884050   0.8857432
18-21 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.8484381   0.8003275   0.8965486
18-21 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.8244939   0.7108824   0.9381054
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.7603606   0.6955860   0.8251353
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.8176586   0.7109598   0.9243574
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7641176   0.6918190   0.8364162
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6422779   0.4640381   0.8205176
18-21 months   ki1000109-EE              PAKISTAN                       1                    NA                0.7528445   0.6734399   0.8322492
18-21 months   ki1000109-EE              PAKISTAN                       0                    NA                0.7110928   0.6692579   0.7529277
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.7912711   0.7656251   0.8169172
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.8417239   0.7866570   0.8967908
18-21 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.8650086   0.7901259   0.9398913
18-21 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.9222795   0.8812176   0.9633413
18-21 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.7028587   0.6509127   0.7548046
18-21 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.6330436   0.5801631   0.6859241
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.7675158   0.7195231   0.8155085
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.7747403   0.7234335   0.8260470
21-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.7607854   0.6905737   0.8309971
21-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.8205558   0.7637515   0.8773601
21-24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.8310268   0.7903274   0.8717261
21-24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.8233267   0.7752132   0.8714402
21-24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.8340794   0.7614676   0.9066912
21-24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.7538145   0.7059519   0.8016771
21-24 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.7450144   0.6879584   0.8020704
21-24 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.8096896   0.7311463   0.8882328
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.8491797   0.7824624   0.9158970
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.8238214   0.7394456   0.9081971
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7139022   0.6392080   0.7885963
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7388599   0.6150773   0.8626426
21-24 months   ki1000109-EE              PAKISTAN                       1                    NA                0.6457941   0.5583685   0.7332197
21-24 months   ki1000109-EE              PAKISTAN                       0                    NA                0.6560079   0.6119416   0.7000741
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.8019928   0.7750605   0.8289251
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.7883048   0.7264596   0.8501499
21-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.8588526   0.7670519   0.9506533
21-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.7763701   0.7199654   0.8327747
21-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.6616028   0.6108548   0.7123508
21-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.7244921   0.6599991   0.7889851


### Parameter: E(Y)


agecat         studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                3.3417037   3.2759713   3.4074362
0-3 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                3.7987014   3.6882619   3.9091408
0-3 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                3.3482250   3.2503342   3.4461159
0-3 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                3.6234175   3.5314103   3.7154247
0-3 months     ki0047075b-MAL-ED         PERU                           NA                   NA                3.0519536   2.9854854   3.1184219
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                3.1814611   3.0837784   3.2791439
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2644991   3.1874675   3.3415308
0-3 months     ki1000109-EE              PAKISTAN                       NA                   NA                3.0768634   2.9920049   3.1617219
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                3.3515606   3.2984055   3.4047158
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     ki1113344-GMS-Nepal       NEPAL                          NA                   NA                3.6007099   3.5477591   3.6536607
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                3.3363113   3.3143866   3.3582359
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                3.6645220   3.6542864   3.6747577
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                3.0073628   2.9543803   3.0603453
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                1.9261396   1.8757731   1.9765061
3-6 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                2.1460815   2.0668679   2.2252951
3-6 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                1.8922980   1.8286780   1.9559180
3-6 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                1.9644601   1.9083113   2.0206088
3-6 months     ki0047075b-MAL-ED         PERU                           NA                   NA                2.0156821   1.9494666   2.0818976
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                1.9675632   1.8869774   2.0481490
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1000109-EE              PAKISTAN                       NA                   NA                2.0964784   2.0370459   2.1559108
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                1.9406419   1.8967379   1.9845458
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1113344-GMS-Nepal       NEPAL                          NA                   NA                1.7149484   1.6747185   1.7551783
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                1.9798025   1.9589541   2.0006508
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                1.9202003   1.9097349   1.9306657
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                1.8983676   1.8684335   1.9283018
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                1.2501943   1.2105165   1.2898721
6-9 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                1.4831159   1.4026580   1.5635738
6-9 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                1.2462236   1.1943701   1.2980772
6-9 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                1.3571408   1.3129874   1.4012943
6-9 months     ki0047075b-MAL-ED         PERU                           NA                   NA                1.3199965   1.2656612   1.3743319
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                1.3727471   1.3076679   1.4378262
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1907556   1.1129385   1.2685726
6-9 months     ki1000109-EE              PAKISTAN                       NA                   NA                1.1759299   1.1281312   1.2237286
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                1.2164378   1.1971945   1.2356811
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     ki1113344-GMS-Nepal       NEPAL                          NA                   NA                1.3149951   1.2714994   1.3584908
6-9 months     ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                1.3463873   1.3263814   1.3663933
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                1.3242433   1.3035625   1.3449241
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.9891384   0.9503088   1.0279680
9-12 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                1.2982559   1.2240694   1.3724425
9-12 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                0.9814702   0.9432520   1.0196885
9-12 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                1.0892372   1.0484769   1.1299974
9-12 months    ki0047075b-MAL-ED         PERU                           NA                   NA                1.0985124   1.0475959   1.1494289
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                1.0154176   0.9498134   1.0810218
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8131077   0.7319679   0.8942474
9-12 months    ki1000109-EE              PAKISTAN                       NA                   NA                0.9088153   0.8730486   0.9445821
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.9997324   0.9682232   1.0312416
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.9962469   0.9614166   1.0310773
9-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                1.0802479   1.0614441   1.0990518
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                1.0714791   1.0535276   1.0894307
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.9138320   0.8732892   0.9543748
12-15 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                1.1421774   1.0831447   1.2012100
12-15 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.9104936   0.8713262   0.9496610
12-15 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.9514124   0.9120195   0.9908054
12-15 months   ki0047075b-MAL-ED         PERU                           NA                   NA                0.8917280   0.8454370   0.9380189
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.9204319   0.8621345   0.9787294
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8563558   0.7920248   0.9206869
12-15 months   ki1000109-EE              PAKISTAN                       NA                   NA                1.0093391   0.9760739   1.0426043
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.8334688   0.7956713   0.8712664
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.8761489   0.8451937   0.9071041
12-15 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.9168654   0.8876056   0.9461252
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.9415306   0.9256966   0.9573645
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.8245812   0.7874849   0.8616775
15-18 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                1.0021114   0.9429996   1.0612232
15-18 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.8443884   0.8080665   0.8807103
15-18 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.8408362   0.7994023   0.8822700
15-18 months   ki0047075b-MAL-ED         PERU                           NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.8927939   0.8398181   0.9457697
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6867479   0.6257076   0.7477883
15-18 months   ki1000109-EE              PAKISTAN                       NA                   NA                0.8423245   0.8096780   0.8749710
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.9046837   0.8805433   0.9288241
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.7530525   0.7156232   0.7904818
15-18 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.7990024   0.7666506   0.8313542
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.8599177   0.8433915   0.8764438
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.8149421   0.7805357   0.8493484
18-21 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.9160758   0.8452655   0.9868862
18-21 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.8787101   0.8434384   0.9139818
18-21 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.8182798   0.7801724   0.8563871
18-21 months   ki0047075b-MAL-ED         PERU                           NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.7830843   0.7268811   0.8392874
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7437038   0.6761886   0.8112190
18-21 months   ki1000109-EE              PAKISTAN                       NA                   NA                0.7207894   0.6859832   0.7555957
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.9071693   0.8706533   0.9436852
18-21 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.6698320   0.6330206   0.7066433
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.7716930   0.7363295   0.8070564
21-24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.7961519   0.7521041   0.8401997
21-24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.8255513   0.7946970   0.8564056
21-24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.7833565   0.7426056   0.8241074
21-24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                0.7610506   0.7141593   0.8079419
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.8379978   0.7860329   0.8899627
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7189328   0.6544287   0.7834368
21-24 months   ki1000109-EE              PAKISTAN                       NA                   NA                0.6539968   0.6154353   0.6925583
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.8033069   0.7554279   0.8511859
21-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.6878183   0.6475714   0.7280651


### Parameter: ATE


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0603413   -0.0785413    0.1992239
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0222722   -0.2099322    0.2544767
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    1                  0.0258888   -0.1707370    0.2225146
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    1                  0.1601912   -0.0213688    0.3417512
0-3 months     ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU                           0                    1                  0.0905316   -0.0688755    0.2499388
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0030669   -0.1977358    0.2038697
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1394112   -0.3860141    0.1071917
0-3 months     ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE              PAKISTAN                       0                    1                  0.0468319   -0.1617300    0.2553938
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0136653   -0.1768547    0.1495242
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 -0.0373497   -0.1522086    0.0775093
0-3 months     ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0809636   -0.1876148    0.0256876
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 -0.1112005   -0.1540139   -0.0683871
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.5085602    0.4847365    0.5323839
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.0778249   -0.1864857    0.0308358
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0153312   -0.1193834    0.0887211
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.1057848   -0.2647060    0.0531365
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0458931   -0.1803004    0.0885141
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0587350   -0.0540419    0.1715120
3-6 months     ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU                           0                    1                  0.1084074   -0.0363107    0.2531255
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.1524551   -0.0097071    0.3146173
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0861881   -0.1016904    0.2740665
3-6 months     ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE              PAKISTAN                       0                    1                  0.0677974   -0.0992701    0.2348650
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    1                  0.1070388   -0.0402955    0.2543732
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.2175781    0.1096788    0.3254774
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0353046   -0.1273801    0.0567708
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                  0.0119644   -0.0303420    0.0542709
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.2019905    0.1758218    0.2281593
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.0092604   -0.0713204    0.0527997
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0125298   -0.0894329    0.0643733
6-9 months     ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0085308   -0.1553396    0.1724012
6-9 months     ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         INDIA                          0                    1                  0.1344507    0.0298135    0.2390879
6-9 months     ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0358112   -0.0524926    0.1241150
6-9 months     ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         PERU                           0                    1                  0.0035994   -0.1301328    0.1373316
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0903388   -0.0500763    0.2307539
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0205793   -0.1785480    0.2197066
6-9 months     ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE              PAKISTAN                       0                    1                  0.0174183   -0.1011914    0.1360280
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          0                    1                  0.0247230   -0.1159687    0.1654148
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.0292934   -0.0715840    0.1301708
6-9 months     ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0494077   -0.1459795    0.0471642
6-9 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 -0.0089172   -0.0495328    0.0316984
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.0038143   -0.0458870    0.0382584
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0755933   -0.0051246    0.1563112
9-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0151698   -0.1654005    0.1350608
9-12 months    ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         INDIA                          0                    1                  0.0122290   -0.0643175    0.0887755
9-12 months    ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.0158352   -0.0982498    0.0665794
9-12 months    ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         PERU                           0                    1                 -0.0190664   -0.1388511    0.1007183
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0946087   -0.2348269    0.0456096
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0271735   -0.2362939    0.1819468
9-12 months    ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE              PAKISTAN                       0                    1                 -0.0020784   -0.0935882    0.0894315
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0048945   -0.1345022    0.1247133
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 -0.0285394   -0.1097805    0.0527017
9-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.0393057   -0.0415644    0.1201757
9-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                  0.0213181   -0.0164725    0.0591087
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.0217571   -0.0158892    0.0594035
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0591600   -0.0233244    0.1416444
12-15 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0229222   -0.1427698    0.0969254
12-15 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0009296   -0.0823204    0.0804612
12-15 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0023590   -0.0797003    0.0844183
12-15 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.1272132    0.0080236    0.2464029
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0281404   -0.1548780    0.0985971
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0113409   -0.1952594    0.1725775
12-15 months   ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE              PAKISTAN                       0                    1                 -0.0305153   -0.1132460    0.0522154
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          0                    1                  0.0206548   -0.2312580    0.2725675
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.0009681   -0.0680554    0.0699917
12-15 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0503676   -0.1123965    0.0116614
12-15 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                  0.0289408   -0.0300356    0.0879172
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.0026589   -0.0351355    0.0298177
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0238402   -0.0534906    0.1011710
15-18 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0394875   -0.1609807    0.0820057
15-18 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0288791   -0.1046439    0.0468858
15-18 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.0437441   -0.1294574    0.0419693
15-18 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.0257597   -0.0706255    0.1221448
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0265316   -0.0830482    0.1361114
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0099314   -0.1892817    0.2091445
15-18 months   ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE              PAKISTAN                       0                    1                  0.0320019   -0.0392271    0.1032310
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0378700   -0.1477710    0.0720309
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.0375388   -0.0253388    0.1004164
15-18 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0538583   -0.1280741    0.0203575
15-18 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                  0.0284663   -0.0378260    0.0947586
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.0168314   -0.0155318    0.0491945
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0335417   -0.1018678    0.0347845
18-21 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.1123026   -0.2579132    0.0333081
18-21 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.0010884   -0.0724346    0.0746115
18-21 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0461015   -0.0319781    0.1241812
18-21 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         PERU                           0                    1                 -0.0239442   -0.1499417    0.1020534
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0572980   -0.0678092    0.1824052
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1218397   -0.3139318    0.0702523
18-21 months   ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE              PAKISTAN                       0                    1                 -0.0417517   -0.1348611    0.0513577
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.0504528   -0.0099875    0.1108931
18-21 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.0572709   -0.0281853    0.1427270
18-21 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 -0.0698151   -0.1444359    0.0048057
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0072244   -0.0633081    0.0777570
21-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0597704   -0.0311636    0.1507045
21-24 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0077001   -0.0709840    0.0555838
21-24 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.0802649   -0.1688410    0.0083113
21-24 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.0646752   -0.0322986    0.1616489
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0253583   -0.1333953    0.0826787
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0249578   -0.1202993    0.1702149
21-24 months   ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000109-EE              PAKISTAN                       0                    1                  0.0102138   -0.0885209    0.1089485
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 -0.0136881   -0.0812342    0.0538580
21-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0824825   -0.1908643    0.0258992
21-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                  0.0628893   -0.0196835    0.1454620


### Parameter: PAR


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0187054   -0.0347948    0.0722056
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0044126   -0.1239279    0.1327532
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0101374   -0.0679463    0.0882211
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0908353   -0.0102802    0.1919509
0-3 months     ki0047075b-MAL-ED         PERU                           1                    NA                 0.0285556   -0.0113189    0.0684300
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0065754   -0.0643210    0.0774718
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0194316   -0.0547390    0.0158758
0-3 months     ki1000109-EE              PAKISTAN                       1                    NA                 0.0326619   -0.1424309    0.2077547
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0116672   -0.1638235    0.1404890
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0050220   -0.0199970    0.0099530
0-3 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0629335   -0.1378516    0.0119846
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0540088   -0.0745901   -0.0334275
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.5072509    0.4839686    0.5305332
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0226793   -0.0553007    0.0099420
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0083285   -0.0486546    0.0319975
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0511522   -0.1371951    0.0348907
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0212040   -0.0755847    0.0331767
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0287816   -0.0383423    0.0959055
3-6 months     ki0047075b-MAL-ED         PERU                           1                    NA                 0.0222955   -0.0144443    0.0590352
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0389910   -0.0230813    0.1010633
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0164809   -0.0157098    0.0486715
3-6 months     ki1000109-EE              PAKISTAN                       1                    NA                 0.0557449   -0.0830736    0.1945635
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0999581   -0.0369629    0.2368792
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0243006    0.0092577    0.0393435
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0257967   -0.0902094    0.0386159
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0055508   -0.0142395    0.0253411
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.2016209    0.1760387    0.2272031
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0023319   -0.0201469    0.0154832
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0026292   -0.0324713    0.0272128
6-9 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0192578   -0.0706349    0.1091505
6-9 months     ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0465389    0.0035337    0.0895441
6-9 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0256659   -0.0264941    0.0778259
6-9 months     ki0047075b-MAL-ED         PERU                           1                    NA                -0.0004322   -0.0346335    0.0337691
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0411507   -0.0138615    0.0961630
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0029228   -0.0286059    0.0344516
6-9 months     ki1000109-EE              PAKISTAN                       1                    NA                 0.0139007   -0.0841575    0.1119588
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0233708   -0.1081598    0.1549014
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0040446   -0.0082937    0.0163828
6-9 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0351699   -0.1034275    0.0330876
6-9 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0007883   -0.0195760    0.0179994
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0013740   -0.0155946    0.0128467
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0277256   -0.0039923    0.0594435
9-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0049457   -0.0864271    0.0765357
9-12 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0022631   -0.0336296    0.0291034
9-12 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0108052   -0.0592111    0.0376007
9-12 months    ki0047075b-MAL-ED         PERU                           1                    NA                -0.0017973   -0.0329213    0.0293267
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0440364   -0.1008591    0.0127863
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0021944   -0.0361531    0.0317642
9-12 months    ki1000109-EE              PAKISTAN                       1                    NA                -0.0022175   -0.0778534    0.0734184
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0058168   -0.1241460    0.1125124
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0035487   -0.0141122    0.0070147
9-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0282499   -0.0291265    0.0856263
9-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0090737   -0.0086252    0.0267727
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0076816   -0.0057489    0.0211121
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0228543   -0.0103140    0.0560226
12-15 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0014912   -0.0653373    0.0623548
12-15 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0006633   -0.0322244    0.0335511
12-15 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0075503   -0.0405988    0.0556994
12-15 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0352887    0.0031613    0.0674160
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0177715   -0.0677039    0.0321609
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0006355   -0.0291442    0.0278731
12-15 months   ki1000109-EE              PAKISTAN                       1                    NA                -0.0248707   -0.0930360    0.0432946
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0196839   -0.2199992    0.2593671
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0003569   -0.0093961    0.0101100
12-15 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0349071   -0.0791298    0.0093156
12-15 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0147261   -0.0140557    0.0435079
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0007193   -0.0124328    0.0109941
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0090336   -0.0212919    0.0393591
15-18 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0186608   -0.0811057    0.0437841
15-18 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0116306   -0.0420188    0.0187576
15-18 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0267005   -0.0767348    0.0233337
15-18 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0052157   -0.0214699    0.0319012
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0124612   -0.0313472    0.0562696
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0011415   -0.0277414    0.0254585
15-18 months   ki1000109-EE              PAKISTAN                       1                    NA                 0.0222750   -0.0354188    0.0799687
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0342435   -0.1361513    0.0676643
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0049890   -0.0038600    0.0138380
15-18 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0369646   -0.0888807    0.0149514
15-18 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0123293   -0.0187871    0.0434457
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0062551   -0.0052564    0.0177666
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0141146   -0.0411366    0.0129074
18-21 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0561508   -0.1335092    0.0212075
18-21 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0038049   -0.0262876    0.0338973
18-21 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0273072   -0.0182542    0.0728686
18-21 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0069942   -0.0401037    0.0261154
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0227236   -0.0250883    0.0705356
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0204138   -0.0511462    0.0103186
18-21 months   ki1000109-EE              PAKISTAN                       1                    NA                -0.0320551   -0.1061450    0.0420348
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0065044   -0.0018740    0.0148828
18-21 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0421607   -0.0178131    0.1021344
18-21 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0330267   -0.0684560    0.0024026
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0041771   -0.0244316    0.0327859
21-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0353665   -0.0134978    0.0842308
21-24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0054755   -0.0316938    0.0207428
21-24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0507229   -0.1029684    0.0015226
21-24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0160362   -0.0097366    0.0418090
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0111819   -0.0532668    0.0309031
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0050306   -0.0233448    0.0334061
21-24 months   ki1000109-EE              PAKISTAN                       1                    NA                 0.0082028   -0.0721024    0.0885079
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0026575   -0.0115827    0.0062677
21-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0555457   -0.1301211    0.0190297
21-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0262155   -0.0128915    0.0653225

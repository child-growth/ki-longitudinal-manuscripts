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
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1             151     242  y_rate_haz       
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0              91     242  y_rate_haz       
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1              76     168  y_rate_haz       
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0              92     168  y_rate_haz       
0-3 months     ki0047075b-MAL-ED         INDIA                          1             110     183  y_rate_haz       
0-3 months     ki0047075b-MAL-ED         INDIA                          0              73     183  y_rate_haz       
0-3 months     ki0047075b-MAL-ED         NEPAL                          1              70     156  y_rate_haz       
0-3 months     ki0047075b-MAL-ED         NEPAL                          0              86     156  y_rate_haz       
0-3 months     ki0047075b-MAL-ED         PERU                           1             200     265  y_rate_haz       
0-3 months     ki0047075b-MAL-ED         PERU                           0              65     265  y_rate_haz       
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1             134     208  y_rate_haz       
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0              74     208  y_rate_haz       
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             196     228  y_rate_haz       
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              32     228  y_rate_haz       
0-3 months     ki1000109-EE              PAKISTAN                       1              55     294  y_rate_haz       
0-3 months     ki1000109-EE              PAKISTAN                       0             239     294  y_rate_haz       
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1              93    1261  y_rate_haz       
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0            1168    1261  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     1             623     721  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     0              98     721  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal       NEPAL                          1             139     462  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal       NEPAL                          0             323     462  y_rate_haz       
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       1            3772    7074  y_rate_haz       
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       0            3302    7074  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1              55   19879  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0           19824   19879  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1            1780    2517  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0             737    2517  y_rate_haz       
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1             140     230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0              90     230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1              95     208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0             113     208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED         INDIA                          1             137     230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED         INDIA                          0              93     230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED         NEPAL                          1              95     233  y_rate_haz       
3-6 months     ki0047075b-MAL-ED         NEPAL                          0             138     233  y_rate_haz       
3-6 months     ki0047075b-MAL-ED         PERU                           1             199     267  y_rate_haz       
3-6 months     ki0047075b-MAL-ED         PERU                           0              68     267  y_rate_haz       
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1             150     240  y_rate_haz       
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0              90     240  y_rate_haz       
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             198     239  y_rate_haz       
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              41     239  y_rate_haz       
3-6 months     ki1000109-EE              PAKISTAN                       1              49     272  y_rate_haz       
3-6 months     ki1000109-EE              PAKISTAN                       0             223     272  y_rate_haz       
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1              87    1124  y_rate_haz       
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0            1037    1124  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     1             602     695  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     0              93     695  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1             127     422  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0             295     422  y_rate_haz       
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       1            2948    5473  y_rate_haz       
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       0            2525    5473  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1              25   12581  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0           12556   12581  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     1            1315    1840  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     0             525    1840  y_rate_haz       
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     1             136     223  y_rate_haz       
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     0              87     223  y_rate_haz       
6-9 months     ki0047075b-MAL-ED         BRAZIL                         1              91     198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED         BRAZIL                         0             107     198  y_rate_haz       
6-9 months     ki0047075b-MAL-ED         INDIA                          1             138     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED         INDIA                          0              92     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED         NEPAL                          1              95     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED         NEPAL                          0             135     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED         PERU                           1             179     245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED         PERU                           0              66     245  y_rate_haz       
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1             138     227  y_rate_haz       
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0              89     227  y_rate_haz       
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             188     225  y_rate_haz       
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              37     225  y_rate_haz       
6-9 months     ki1000109-EE              PAKISTAN                       1              54     295  y_rate_haz       
6-9 months     ki1000109-EE              PAKISTAN                       0             241     295  y_rate_haz       
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          1              91    1144  y_rate_haz       
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          0            1053    1144  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     1             595     688  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     0              93     688  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal       NEPAL                          1             128     432  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal       NEPAL                          0             304     432  y_rate_haz       
6-9 months     ki1126311-ZVITAMBO        ZIMBABWE                       1            2839    5271  y_rate_haz       
6-9 months     ki1126311-ZVITAMBO        ZIMBABWE                       0            2432    5271  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     1            2016    3054  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     0            1038    3054  y_rate_haz       
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     1             137     224  y_rate_haz       
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     0              87     224  y_rate_haz       
9-12 months    ki0047075b-MAL-ED         BRAZIL                         1              89     194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED         BRAZIL                         0             105     194  y_rate_haz       
9-12 months    ki0047075b-MAL-ED         INDIA                          1             135     227  y_rate_haz       
9-12 months    ki0047075b-MAL-ED         INDIA                          0              92     227  y_rate_haz       
9-12 months    ki0047075b-MAL-ED         NEPAL                          1              95     229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED         NEPAL                          0             134     229  y_rate_haz       
9-12 months    ki0047075b-MAL-ED         PERU                           1             173     235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED         PERU                           0              62     235  y_rate_haz       
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1             138     230  y_rate_haz       
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0              92     230  y_rate_haz       
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             188     224  y_rate_haz       
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              36     224  y_rate_haz       
9-12 months    ki1000109-EE              PAKISTAN                       1              57     316  y_rate_haz       
9-12 months    ki1000109-EE              PAKISTAN                       0             259     316  y_rate_haz       
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          1              86    1146  y_rate_haz       
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          0            1060    1146  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     1             580     674  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     0              94     674  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal       NEPAL                          1             124     425  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal       NEPAL                          0             301     425  y_rate_haz       
9-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       1            2809    5265  y_rate_haz       
9-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       0            2456    5265  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1            2244    3501  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0            1257    3501  y_rate_haz       
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     1             127     211  y_rate_haz       
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     0              84     211  y_rate_haz       
12-15 months   ki0047075b-MAL-ED         BRAZIL                         1              86     184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED         BRAZIL                         0              98     184  y_rate_haz       
12-15 months   ki0047075b-MAL-ED         INDIA                          1             135     226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED         INDIA                          0              91     226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED         NEPAL                          1              95     230  y_rate_haz       
12-15 months   ki0047075b-MAL-ED         NEPAL                          0             135     230  y_rate_haz       
12-15 months   ki0047075b-MAL-ED         PERU                           1             163     224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED         PERU                           0              61     224  y_rate_haz       
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1             136     225  y_rate_haz       
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0              89     225  y_rate_haz       
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             190     226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              36     226  y_rate_haz       
12-15 months   ki1000109-EE              PAKISTAN                       1              54     289  y_rate_haz       
12-15 months   ki1000109-EE              PAKISTAN                       0             235     289  y_rate_haz       
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          1              84    1168  y_rate_haz       
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          0            1084    1168  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     1             565     660  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     0              95     660  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal       NEPAL                          1             125     426  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal       NEPAL                          0             301     426  y_rate_haz       
12-15 months   ki1126311-ZVITAMBO        ZIMBABWE                       1            1144    2218  y_rate_haz       
12-15 months   ki1126311-ZVITAMBO        ZIMBABWE                       0            1074    2218  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     1            2267    3549  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     0            1282    3549  y_rate_haz       
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     1             128     211  y_rate_haz       
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     0              83     211  y_rate_haz       
15-18 months   ki0047075b-MAL-ED         BRAZIL                         1              85     175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED         BRAZIL                         0              90     175  y_rate_haz       
15-18 months   ki0047075b-MAL-ED         INDIA                          1             135     226  y_rate_haz       
15-18 months   ki0047075b-MAL-ED         INDIA                          0              91     226  y_rate_haz       
15-18 months   ki0047075b-MAL-ED         NEPAL                          1              95     227  y_rate_haz       
15-18 months   ki0047075b-MAL-ED         NEPAL                          0             132     227  y_rate_haz       
15-18 months   ki0047075b-MAL-ED         PERU                           1             154     213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED         PERU                           0              59     213  y_rate_haz       
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1             133     222  y_rate_haz       
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0              89     222  y_rate_haz       
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             185     217  y_rate_haz       
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              32     217  y_rate_haz       
15-18 months   ki1000109-EE              PAKISTAN                       1              52     270  y_rate_haz       
15-18 months   ki1000109-EE              PAKISTAN                       0             218     270  y_rate_haz       
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          1              88    1171  y_rate_haz       
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          0            1083    1171  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     1             518     604  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     0              86     604  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal       NEPAL                          1             132     437  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal       NEPAL                          0             305     437  y_rate_haz       
15-18 months   ki1126311-ZVITAMBO        ZIMBABWE                       1             947    1776  y_rate_haz       
15-18 months   ki1126311-ZVITAMBO        ZIMBABWE                       0             829    1776  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     1            2280    3550  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     0            1270    3550  y_rate_haz       
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     1             126     208  y_rate_haz       
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     0              82     208  y_rate_haz       
18-21 months   ki0047075b-MAL-ED         BRAZIL                         1              80     167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED         BRAZIL                         0              87     167  y_rate_haz       
18-21 months   ki0047075b-MAL-ED         INDIA                          1             134     226  y_rate_haz       
18-21 months   ki0047075b-MAL-ED         INDIA                          0              92     226  y_rate_haz       
18-21 months   ki0047075b-MAL-ED         NEPAL                          1              95     227  y_rate_haz       
18-21 months   ki0047075b-MAL-ED         NEPAL                          0             132     227  y_rate_haz       
18-21 months   ki0047075b-MAL-ED         PERU                           1             147     202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED         PERU                           0              55     202  y_rate_haz       
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1             140     230  y_rate_haz       
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0              90     230  y_rate_haz       
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             173     204  y_rate_haz       
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              31     204  y_rate_haz       
18-21 months   ki1000109-EE              PAKISTAN                       1              52     248  y_rate_haz       
18-21 months   ki1000109-EE              PAKISTAN                       0             196     248  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     1             469     546  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     0              77     546  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal       NEPAL                          1             122     406  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal       NEPAL                          0             284     406  y_rate_haz       
18-21 months   ki1126311-ZVITAMBO        ZIMBABWE                       1             728    1382  y_rate_haz       
18-21 months   ki1126311-ZVITAMBO        ZIMBABWE                       0             654    1382  y_rate_haz       
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     1             126     206  y_rate_haz       
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     0              80     206  y_rate_haz       
21-24 months   ki0047075b-MAL-ED         BRAZIL                         1              77     165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED         BRAZIL                         0              88     165  y_rate_haz       
21-24 months   ki0047075b-MAL-ED         INDIA                          1             133     226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED         INDIA                          0              93     226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED         NEPAL                          1              94     227  y_rate_haz       
21-24 months   ki0047075b-MAL-ED         NEPAL                          0             133     227  y_rate_haz       
21-24 months   ki0047075b-MAL-ED         PERU                           1             139     189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED         PERU                           0              50     189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1             142     232  y_rate_haz       
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0              90     232  y_rate_haz       
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             171     204  y_rate_haz       
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              33     204  y_rate_haz       
21-24 months   ki1000109-EE              PAKISTAN                       1              21     103  y_rate_haz       
21-24 months   ki1000109-EE              PAKISTAN                       0              82     103  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1             422     490  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0              68     490  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal       NEPAL                          1             100     318  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal       NEPAL                          0             218     318  y_rate_haz       
21-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1             527    1000  y_rate_haz       
21-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0             473    1000  y_rate_haz       


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
![](/tmp/5bf1e2c6-71c4-44d6-a548-7fbe59d11fda/688ad0f5-e6a8-48c7-b4b9-6983a6cacbb8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5bf1e2c6-71c4-44d6-a548-7fbe59d11fda/688ad0f5-e6a8-48c7-b4b9-6983a6cacbb8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5bf1e2c6-71c4-44d6-a548-7fbe59d11fda/688ad0f5-e6a8-48c7-b4b9-6983a6cacbb8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.1365091   -0.1783627   -0.0946555
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0987472   -0.1582490   -0.0392454
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.1193339    0.0312203    0.2074475
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.1433973    0.0671410    0.2196535
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0628296   -0.1293979    0.0037388
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0516194   -0.1277871    0.0245483
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0057649   -0.0590090    0.0705387
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0903749    0.0324604    0.1482895
0-3 months     ki0047075b-MAL-ED         PERU                           1                    NA                -0.2799037   -0.3167287   -0.2430786
0-3 months     ki0047075b-MAL-ED         PERU                           0                    NA                -0.2053684   -0.2818911   -0.1288458
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.1828545   -0.2468762   -0.1188327
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.1605586   -0.2372884   -0.0838289
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1297085   -0.1713837   -0.0880334
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1975410   -0.3106146   -0.0844675
0-3 months     ki1000109-EE              PAKISTAN                       1                    NA                -0.2566970   -0.3433291   -0.1700649
0-3 months     ki1000109-EE              PAKISTAN                       0                    NA                -0.2055440   -0.2549740   -0.1561139
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.1303868   -0.2168372   -0.0439364
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.1276389   -0.1534015   -0.1018763
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.2279851   -0.2466109   -0.2093594
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.2563001   -0.3050683   -0.2075318
0-3 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0225628   -0.0658140    0.0206884
0-3 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0389764   -0.0717257   -0.0062271
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.1153877   -0.1301024   -0.1006729
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.1703847   -0.1863113   -0.1544581
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.1603667   -0.1705478   -0.1501856
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0594258    0.0543948    0.0644569
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.2658359   -0.2979973   -0.2336746
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.3015168   -0.3531031   -0.2499306
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0204136   -0.0530400    0.0122128
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0263597   -0.0624168    0.0096974
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0878961    0.0353372    0.1404550
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0354186   -0.0150858    0.0859230
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0289716   -0.0653171    0.0073739
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0475144   -0.0978116    0.0027827
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0384924   -0.0770697    0.0000849
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0124297   -0.0486114    0.0237521
3-6 months     ki0047075b-MAL-ED         PERU                           1                    NA                 0.0145979   -0.0229722    0.0521680
3-6 months     ki0047075b-MAL-ED         PERU                           0                    NA                 0.0657110    0.0073202    0.1241017
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0278281   -0.0770015    0.0213453
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.0343818   -0.0240317    0.0927954
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0803971   -0.1155635   -0.0452306
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0415835   -0.1209042    0.0377372
3-6 months     ki1000109-EE              PAKISTAN                       1                    NA                 0.0352424   -0.0352527    0.1057374
3-6 months     ki1000109-EE              PAKISTAN                       0                    NA                 0.0745955    0.0441437    0.1050474
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0433466   -0.1045784    0.0178853
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0135107   -0.0322812    0.0052598
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0146460   -0.0029074    0.0321995
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                 0.1026757    0.0537332    0.1516182
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.1474361   -0.1845511   -0.1103212
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.1621257   -0.1841125   -0.1401389
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0019671   -0.0152078    0.0112735
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                 0.0026169   -0.0120928    0.0173266
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0682176   -0.0790766   -0.0573587
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0033126   -0.0082876    0.0016623
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0083324   -0.0252501    0.0085852
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0100842   -0.0340657    0.0138973
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0683592   -0.0924693   -0.0442491
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0667144   -0.0904351   -0.0429936
6-9 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0184492   -0.0294362    0.0663345
6-9 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.0036246   -0.0553563    0.0481070
6-9 months     ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0899612   -0.1196206   -0.0603019
6-9 months     ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0358863   -0.0727458    0.0009732
6-9 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0443692   -0.0721118   -0.0166267
6-9 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0339745   -0.0605263   -0.0074227
6-9 months     ki0047075b-MAL-ED         PERU                           1                    NA                -0.0328070   -0.0606421   -0.0049719
6-9 months     ki0047075b-MAL-ED         PERU                           0                    NA                -0.0372952   -0.0872161    0.0126256
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0320234   -0.0666414    0.0025946
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.0100358   -0.0378475    0.0579192
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0937360   -0.1300522   -0.0574198
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0928815   -0.1797210   -0.0060419
6-9 months     ki1000109-EE              PAKISTAN                       1                    NA                -0.0893328   -0.1381354   -0.0405302
6-9 months     ki1000109-EE              PAKISTAN                       0                    NA                -0.0841077   -0.1075960   -0.0606193
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0935504   -0.1570722   -0.0300286
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0812683   -0.0915300   -0.0710066
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0329205   -0.0464106   -0.0194304
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.0199262   -0.0573372    0.0174848
6-9 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0365672   -0.0712145   -0.0019198
6-9 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0494451   -0.0717906   -0.0270995
6-9 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0314134   -0.0432861   -0.0195407
6-9 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.0353391   -0.0486833   -0.0219948
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0290014   -0.0402442   -0.0177585
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0288221   -0.0431585   -0.0144857
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.1003809   -0.1211334   -0.0796283
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0671440   -0.0933735   -0.0409145
9-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0180039   -0.0208033    0.0568110
9-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0086711   -0.0384388    0.0557810
9-12 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0900576   -0.1104587   -0.0696565
9-12 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0901153   -0.1155460   -0.0646846
9-12 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0582107   -0.0834292   -0.0329921
9-12 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0677191   -0.0905697   -0.0448685
9-12 months    ki0047075b-MAL-ED         PERU                           1                    NA                -0.0396595   -0.0648665   -0.0144525
9-12 months    ki0047075b-MAL-ED         PERU                           0                    NA                -0.0485462   -0.0905707   -0.0065216
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0673545   -0.0992691   -0.0354399
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.1079312   -0.1569210   -0.0589413
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1536694   -0.1913238   -0.1160150
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1633465   -0.2412610   -0.0854319
9-12 months    ki1000109-EE              PAKISTAN                       1                    NA                -0.0979671   -0.1367917   -0.0591424
9-12 months    ki1000109-EE              PAKISTAN                       0                    NA                -0.1026313   -0.1193144   -0.0859481
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0850397   -0.1339489   -0.0361305
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0808950   -0.0980135   -0.0637766
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0321101   -0.0439369   -0.0202833
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.0450620   -0.0746153   -0.0155087
9-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0923597   -0.1231381   -0.0615812
9-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0747699   -0.0913416   -0.0581982
9-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0628094   -0.0738789   -0.0517398
9-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.0549494   -0.0662377   -0.0436611
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0556822   -0.0651640   -0.0462004
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0457983   -0.0579285   -0.0336681
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0655072   -0.0864471   -0.0445673
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0408025   -0.0646780   -0.0169270
12-15 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0045046   -0.0291306    0.0381399
12-15 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.0061044   -0.0367593    0.0245504
12-15 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0536494   -0.0733567   -0.0339421
12-15 months   ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0606827   -0.0858729   -0.0354926
12-15 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0541866   -0.0768845   -0.0314887
12-15 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0585846   -0.0797243   -0.0374450
12-15 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0767716   -0.0962751   -0.0572680
12-15 months   ki0047075b-MAL-ED         PERU                           0                    NA                -0.0354545   -0.0764371    0.0055282
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0558774   -0.0833085   -0.0284464
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0710069   -0.1125346   -0.0294793
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0710684   -0.0985462   -0.0435906
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0626397   -0.1311873    0.0059079
12-15 months   ki1000109-EE              PAKISTAN                       1                    NA                -0.0016526   -0.0278898    0.0245846
12-15 months   ki1000109-EE              PAKISTAN                       0                    NA                -0.0025744   -0.0174335    0.0122848
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.1096483   -0.1981415   -0.0211552
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0845300   -0.0957003   -0.0733597
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0380378   -0.0482679   -0.0278077
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.0398443   -0.0648541   -0.0148345
12-15 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0588010   -0.0777605   -0.0398415
12-15 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0726927   -0.0872833   -0.0581021
12-15 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0710493   -0.0872834   -0.0548151
12-15 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.0577384   -0.0745360   -0.0409409
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0451541   -0.0526388   -0.0376693
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0450712   -0.0552712   -0.0348712
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0472753   -0.0659705   -0.0285800
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0451930   -0.0650314   -0.0253547
15-18 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0132561   -0.0447315    0.0182192
15-18 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.0292556   -0.0577418   -0.0007693
15-18 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0321656   -0.0486624   -0.0156688
15-18 months   ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0463921   -0.0669122   -0.0258719
15-18 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0412539   -0.0660067   -0.0165011
15-18 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0606202   -0.0800446   -0.0411958
15-18 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0365825   -0.0551563   -0.0180087
15-18 months   ki0047075b-MAL-ED         PERU                           0                    NA                -0.0378106   -0.0657939   -0.0098274
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0302471   -0.0558371   -0.0046571
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0254276   -0.0542579    0.0034028
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0872620   -0.1118200   -0.0627040
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0802881   -0.1496930   -0.0108832
15-18 months   ki1000109-EE              PAKISTAN                       1                    NA                -0.0336799   -0.0563813   -0.0109785
15-18 months   ki1000109-EE              PAKISTAN                       0                    NA                -0.0210038   -0.0348215   -0.0071862
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0232723   -0.0133542    0.0598988
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0127001   -0.0237775   -0.0016226
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0183625   -0.0274550   -0.0092700
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.0081896   -0.0294498    0.0130706
15-18 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0612095   -0.0822990   -0.0401200
15-18 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0738313   -0.0908962   -0.0567664
15-18 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0669599   -0.0829861   -0.0509336
15-18 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.0561574   -0.0741347   -0.0381801
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0351990   -0.0431408   -0.0272573
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0286393   -0.0376324   -0.0196462
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0119380   -0.0281627    0.0042868
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0260375   -0.0425953   -0.0094796
18-21 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0085049   -0.0508821    0.0338723
18-21 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.0463336   -0.0754575   -0.0172098
18-21 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0056139   -0.0084642    0.0196920
18-21 months   ki0047075b-MAL-ED         INDIA                          0                    NA                 0.0059992   -0.0143844    0.0263827
18-21 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0375542   -0.0585828   -0.0165257
18-21 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0236006   -0.0403380   -0.0068632
18-21 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0024181   -0.0185065    0.0136703
18-21 months   ki0047075b-MAL-ED         PERU                           0                    NA                -0.0149329   -0.0522003    0.0223345
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0377503   -0.0603360   -0.0151646
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0122240   -0.0483962    0.0239481
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0222580   -0.0467951    0.0022791
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0579368   -0.1228171    0.0069434
18-21 months   ki1000109-EE              PAKISTAN                       1                    NA                -0.0290367   -0.0526422   -0.0054311
18-21 months   ki1000109-EE              PAKISTAN                       0                    NA                -0.0365569   -0.0503184   -0.0227953
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0295224   -0.0382936   -0.0207513
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.0181794   -0.0382565    0.0018976
18-21 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0009366   -0.0262039    0.0280771
18-21 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                 0.0233581    0.0089579    0.0377583
18-21 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0611667   -0.0790053   -0.0433281
18-21 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.0855636   -0.1038591   -0.0672681
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0217320    0.0055429    0.0379212
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0336261    0.0151645    0.0520877
21-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0007160   -0.0250805    0.0265124
21-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0313428    0.0116983    0.0509874
21-24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0270706    0.0137801    0.0403612
21-24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                 0.0298639    0.0111132    0.0486146
21-24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0252425    0.0010148    0.0494702
21-24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0096593   -0.0258838    0.0065651
21-24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0538464    0.0352250    0.0724677
21-24 months   ki0047075b-MAL-ED         PERU                           0                    NA                 0.0627950    0.0357023    0.0898878
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0451238    0.0239229    0.0663247
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.0392842    0.0106184    0.0679500
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0062831   -0.0176437    0.0302099
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0052610   -0.0492508    0.0597728
21-24 months   ki1000109-EE              PAKISTAN                       1                    NA                -0.0037838   -0.0301652    0.0225975
21-24 months   ki1000109-EE              PAKISTAN                       0                    NA                -0.0064372   -0.0211752    0.0083009
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0586030    0.0495078    0.0676981
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                 0.0643794    0.0451333    0.0836255
21-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0702458    0.0391278    0.1013638
21-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                 0.0442996    0.0252866    0.0633126
21-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0057657   -0.0105674    0.0220988
21-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                 0.0264577    0.0054765    0.0474389


### Parameter: E(Y)


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.1205719   -0.1542907   -0.0868531
0-3 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.1340714    0.0769051    0.1912377
0-3 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0590383   -0.1091825   -0.0088941
0-3 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                 0.0547626    0.0104701    0.0990551
0-3 months     ki0047075b-MAL-ED         PERU                           NA                   NA                -0.2628007   -0.2968934   -0.2287079
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.1798454   -0.2290406   -0.1306502
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1375866   -0.1767594   -0.0984138
0-3 months     ki1000109-EE              PAKISTAN                       NA                   NA                -0.2168533   -0.2604590   -0.1732477
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.1273566   -0.1543372   -0.1003761
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.0317949   -0.0581322   -0.0054576
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -0.1412023   -0.1521143   -0.1302904
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                 0.0588418    0.0539208    0.0637627
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.2753025   -0.3035698   -0.2470352
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0230615   -0.0467241    0.0006011
3-6 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0597292    0.0232017    0.0962566
3-6 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0360402   -0.0655320   -0.0065484
3-6 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0230785   -0.0496785    0.0035216
3-6 months     ki0047075b-MAL-ED         PERU                           NA                   NA                 0.0257461   -0.0055184    0.0570106
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0063939   -0.0443613    0.0315736
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1000109-EE              PAKISTAN                       NA                   NA                 0.0671456    0.0392459    0.0950453
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.0166348   -0.0360336    0.0027639
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.1591815   -0.1781032   -0.1402599
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                 0.0004960   -0.0092614    0.0102534
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -0.0034426   -0.0083086    0.0014234
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.0090589   -0.0227889    0.0046710
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0690631   -0.0862955   -0.0518308
6-9 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0087834   -0.0260798    0.0436466
6-9 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0703356   -0.0932354   -0.0474358
6-9 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0345596   -0.0538350   -0.0152841
6-9 months     ki0047075b-MAL-ED         PERU                           NA                   NA                -0.0335784   -0.0576919   -0.0094649
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0196358   -0.0481734    0.0089019
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0934098   -0.1268763   -0.0599434
6-9 months     ki1000109-EE              PAKISTAN                       NA                   NA                -0.0857021   -0.1067530   -0.0646512
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.0823482   -0.0898643   -0.0748321
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.0457287   -0.0644131   -0.0270443
6-9 months     ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -0.0319359   -0.0407462   -0.0231255
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.0289482   -0.0379437   -0.0199527
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0874604   -0.1036871   -0.0712337
9-12 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0081784   -0.0226414    0.0389982
9-12 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0912399   -0.1070647   -0.0754152
9-12 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0622965   -0.0791919   -0.0454011
9-12 months    ki0047075b-MAL-ED         PERU                           NA                   NA                -0.0419261   -0.0633861   -0.0204661
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0844236   -0.1116292   -0.0572179
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1549661   -0.1887326   -0.1211995
9-12 months    ki1000109-EE              PAKISTAN                       NA                   NA                -0.1037570   -0.1187285   -0.0887854
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.0811963   -0.0946758   -0.0677169
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.0811779   -0.0957386   -0.0666171
9-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -0.0595243   -0.0673765   -0.0516722
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.0521209   -0.0596089   -0.0446330
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0558690   -0.0714769   -0.0402611
12-15 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                -0.0030430   -0.0256176    0.0195316
12-15 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0565224   -0.0717497   -0.0412950
12-15 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0574550   -0.0729039   -0.0420060
12-15 months   ki0047075b-MAL-ED         PERU                           NA                   NA                -0.0653532   -0.0832313   -0.0474751
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0588925   -0.0820323   -0.0357527
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0693563   -0.0944134   -0.0442993
12-15 months   ki1000109-EE              PAKISTAN                       NA                   NA                -0.0005298   -0.0137044    0.0126448
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.0847390   -0.0988912   -0.0705868
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.0680116   -0.0796374   -0.0563858
12-15 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -0.0637488   -0.0752400   -0.0522576
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.0450644   -0.0511488   -0.0389801
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0456666   -0.0592050   -0.0321282
15-18 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                -0.0203422   -0.0414264    0.0007419
15-18 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0380035   -0.0508395   -0.0251674
15-18 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0549346   -0.0699931   -0.0398761
15-18 months   ki0047075b-MAL-ED         PERU                           NA                   NA                -0.0360565   -0.0515481   -0.0205649
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0266033   -0.0457128   -0.0074939
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856342   -0.1079770   -0.0632914
15-18 months   ki1000109-EE              PAKISTAN                       NA                   NA                -0.0237393   -0.0352187   -0.0122599
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.0117156   -0.0214328   -0.0019983
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.0698764   -0.0833902   -0.0563627
15-18 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -0.0625385   -0.0743837   -0.0506933
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.0328742   -0.0389268   -0.0268217
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0150418   -0.0266855   -0.0033981
18-21 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                -0.0203590   -0.0449122    0.0041942
18-21 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                 0.0057740   -0.0056559    0.0172040
18-21 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0281053   -0.0411303   -0.0150802
18-21 months   ki0047075b-MAL-ED         PERU                           NA                   NA                -0.0081141   -0.0233572    0.0071290
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0320929   -0.0514760   -0.0127099
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0282032   -0.0511144   -0.0052921
18-21 months   ki1000109-EE              PAKISTAN                       NA                   NA                -0.0346625   -0.0461403   -0.0231846
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                 0.0164715    0.0038362    0.0291068
18-21 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -0.0727232   -0.0854271   -0.0600192
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                 0.0264403    0.0143283    0.0385522
21-24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0164870    0.0004862    0.0324878
21-24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                 0.0297886    0.0188457    0.0407315
21-24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                 0.0054548   -0.0082397    0.0191492
21-24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                 0.0569744    0.0416628    0.0722859
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                 0.0436475    0.0267011    0.0605939
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0088397   -0.0128780    0.0305575
21-24 months   ki1000109-EE              PAKISTAN                       NA                   NA                -0.0054503   -0.0181653    0.0072646
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                 0.0496459    0.0332837    0.0660081
21-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                 0.0164988    0.0033358    0.0296618


### Parameter: ATE


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0377619   -0.0351081    0.1106319
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0240633   -0.0929013    0.1410280
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    1                  0.0112102   -0.0913490    0.1137694
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0846101   -0.0002541    0.1694743
0-3 months     ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU                           0                    1                  0.0745352   -0.0090284    0.1580989
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0222958   -0.0780207    0.1226124
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0678325   -0.1880269    0.0523618
0-3 months     ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE              PAKISTAN                       0                    1                  0.0511530   -0.0489680    0.1512741
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    1                  0.0027479   -0.0769753    0.0824710
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 -0.0283150   -0.0805297    0.0238997
0-3 months     ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0164136   -0.0704336    0.0376064
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 -0.0549970   -0.0762481   -0.0337460
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.2197926    0.2084667    0.2311185
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.0356809   -0.0945857    0.0232239
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0059461   -0.0547278    0.0428356
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0524775   -0.1254888    0.0205338
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0185428   -0.0806842    0.0435986
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0260627   -0.0268053    0.0789308
3-6 months     ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU                           0                    1                  0.0511131   -0.0189757    0.1212018
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0622100   -0.0143604    0.1387803
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0388136   -0.0478653    0.1254924
3-6 months     ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE              PAKISTAN                       0                    1                  0.0393531   -0.0374616    0.1161679
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    1                  0.0298359   -0.0251987    0.0848704
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.0880297    0.0363652    0.1396942
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0146896   -0.0578964    0.0285172
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                  0.0045841   -0.0151447    0.0243128
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.0649050    0.0531192    0.0766907
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.0017517   -0.0311998    0.0276964
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0016448   -0.0323016    0.0355913
6-9 months     ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0220738   -0.0941243    0.0499768
6-9 months     ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         INDIA                          0                    1                  0.0540749    0.0064356    0.1017143
6-9 months     ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0103947   -0.0281426    0.0489320
6-9 months     ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         PERU                           0                    1                 -0.0044883   -0.0617699    0.0527934
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0420592   -0.0170185    0.1011369
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0008545   -0.0934136    0.0951227
6-9 months     ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE              PAKISTAN                       0                    1                  0.0052251   -0.0487504    0.0592007
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          0                    1                  0.0122821   -0.0570676    0.0816319
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.0129943   -0.0266142    0.0526027
6-9 months     ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0128779   -0.0542330    0.0284773
6-9 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 -0.0039257   -0.0218231    0.0139717
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.0001793   -0.0178482    0.0182067
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0332369   -0.0002961    0.0667699
9-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0093328   -0.0706631    0.0519976
9-12 months    ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0000578   -0.0327136    0.0325981
9-12 months    ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.0095084   -0.0435967    0.0245798
9-12 months    ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         PERU                           0                    1                 -0.0088866   -0.0580997    0.0403264
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0405766   -0.0990720    0.0179187
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0096771   -0.0963286    0.0769744
9-12 months    ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE              PAKISTAN                       0                    1                 -0.0046642   -0.0470169    0.0376885
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                  0.0041447   -0.0551100    0.0633994
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 -0.0129519   -0.0448478    0.0189441
9-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.0175897   -0.0173770    0.0525565
9-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                  0.0078600   -0.0079621    0.0236821
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.0098839   -0.0053623    0.0251301
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0247047   -0.0071241    0.0565335
12-15 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0106090   -0.0562887    0.0350707
12-15 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0070333   -0.0394739    0.0254072
12-15 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.0043980   -0.0354811    0.0266850
12-15 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.0413171   -0.0043957    0.0870299
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0151295   -0.0650682    0.0348093
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0084287   -0.0655339    0.0823913
12-15 months   ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE              PAKISTAN                       0                    1                 -0.0009218   -0.0310352    0.0291917
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          0                    1                  0.0251183   -0.0582984    0.1085351
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 -0.0018065   -0.0287730    0.0251601
12-15 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0138917   -0.0377411    0.0099576
12-15 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                  0.0133108   -0.0101266    0.0367482
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.0000829   -0.0124243    0.0125901
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0020822   -0.0254224    0.0295869
15-18 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0159994   -0.0585215    0.0265227
15-18 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0142265   -0.0405260    0.0120731
15-18 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.0193663   -0.0513324    0.0125998
15-18 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         PERU                           0                    1                 -0.0012282   -0.0348749    0.0324186
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0048195   -0.0336351    0.0432742
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0069739   -0.0668471    0.0807948
15-18 months   ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE              PAKISTAN                       0                    1                  0.0126761   -0.0140176    0.0393698
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0359724   -0.0742726    0.0023279
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.0101729   -0.0129508    0.0332966
15-18 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0126218   -0.0398072    0.0145637
15-18 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                  0.0108025   -0.0135079    0.0351129
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.0065597   -0.0053628    0.0184822
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0140995   -0.0374971    0.0092981
18-21 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0378287   -0.0902396    0.0145821
18-21 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.0003853   -0.0248083    0.0255789
18-21 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0139536   -0.0129722    0.0408795
18-21 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         PERU                           0                    1                 -0.0125148   -0.0531170    0.0280874
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0255263   -0.0175058    0.0685584
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0356788   -0.1051685    0.0338109
18-21 months   ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE              PAKISTAN                       0                    1                 -0.0075202   -0.0356171    0.0205766
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.0113430   -0.0105828    0.0332688
18-21 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.0224215   -0.0088356    0.0536786
18-21 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 -0.0243969   -0.0501136    0.0013197
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0118941   -0.0127653    0.0365534
21-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0306268   -0.0019132    0.0631669
21-24 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.0027933   -0.0202448    0.0258313
21-24 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.0349018   -0.0644155   -0.0053881
21-24 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.0089487   -0.0238894    0.0417867
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0058396   -0.0415740    0.0298948
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0010221   -0.0602885    0.0582443
21-24 months   ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000109-EE              PAKISTAN                       0                    1                 -0.0026533   -0.0328744    0.0275677
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.0057764   -0.0155798    0.0271327
21-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0259461   -0.0625551    0.0106628
21-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                  0.0206920   -0.0060291    0.0474132


### Parameter: PAR


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0159372   -0.0126750    0.0445493
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0147375   -0.0495725    0.0790474
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0037913   -0.0363928    0.0439753
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0489977    0.0014314    0.0965640
0-3 months     ki0047075b-MAL-ED         PERU                           1                    NA                 0.0171030   -0.0038161    0.0380221
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0030091   -0.0333126    0.0393308
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0078781   -0.0246679    0.0089118
0-3 months     ki1000109-EE              PAKISTAN                       1                    NA                 0.0398437   -0.0430655    0.1227529
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0030302   -0.0718789    0.0779392
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0032756   -0.0103720    0.0038208
0-3 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0092322   -0.0474142    0.0289499
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0258147   -0.0360102   -0.0156192
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.2192085    0.2081462    0.2302707
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0094665   -0.0271853    0.0082522
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0026479   -0.0216929    0.0163971
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0281669   -0.0680347    0.0117009
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0070686   -0.0322090    0.0180718
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0154139   -0.0159784    0.0468063
3-6 months     ki0047075b-MAL-ED         PERU                           1                    NA                 0.0111482   -0.0068369    0.0291332
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0214343   -0.0074872    0.0503557
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0098522   -0.0052808    0.0249853
3-6 months     ki1000109-EE              PAKISTAN                       1                    NA                 0.0319032   -0.0315707    0.0953772
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0267117   -0.0238793    0.0773028
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0121280    0.0049342    0.0193218
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0117454   -0.0420100    0.0185192
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0024631   -0.0067743    0.0117006
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0647750    0.0532690    0.0762810
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0007265   -0.0091173    0.0076643
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0007039   -0.0138141    0.0124063
6-9 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0096658   -0.0489573    0.0296258
6-9 months     ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0196257    0.0005577    0.0386937
6-9 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0098097   -0.0130313    0.0326507
6-9 months     ki0047075b-MAL-ED         PERU                           1                    NA                -0.0007714   -0.0155048    0.0139619
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0123876   -0.0111193    0.0358945
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0003262   -0.0126719    0.0133242
6-9 months     ki1000109-EE              PAKISTAN                       1                    NA                 0.0036307   -0.0415373    0.0487987
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0112022   -0.0536753    0.0760797
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0015567   -0.0037440    0.0068575
6-9 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0091615   -0.0382224    0.0198994
6-9 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0005225   -0.0087811    0.0077361
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0000531   -0.0060805    0.0061867
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0129205   -0.0002678    0.0261087
9-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0098255   -0.0428318    0.0231809
9-12 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0011824   -0.0144405    0.0120757
9-12 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0040858   -0.0240877    0.0159160
9-12 months    ki0047075b-MAL-ED         PERU                           1                    NA                -0.0022665   -0.0152570    0.0107239
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0170690   -0.0403616    0.0062235
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0012967   -0.0149293    0.0123359
9-12 months    ki1000109-EE              PAKISTAN                       1                    NA                -0.0057899   -0.0417530    0.0301732
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0038434   -0.0507569    0.0584437
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0021894   -0.0064983    0.0021195
9-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0111818   -0.0139956    0.0363592
9-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0032850   -0.0041482    0.0107183
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0035613   -0.0019057    0.0090283
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0096382   -0.0031353    0.0224117
12-15 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0075476   -0.0316946    0.0165994
12-15 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0028729   -0.0158957    0.0101498
12-15 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0032684   -0.0215694    0.0150327
12-15 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0114184   -0.0008929    0.0237297
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0030151   -0.0225198    0.0164897
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0017121   -0.0092989    0.0127231
12-15 months   ki1000109-EE              PAKISTAN                       1                    NA                 0.0011229   -0.0234982    0.0257439
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0249093   -0.0536358    0.1034545
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0002935   -0.0041672    0.0035802
12-15 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0092106   -0.0261906    0.0077694
12-15 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0073004   -0.0041854    0.0187863
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0000896   -0.0044165    0.0045958
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0016086   -0.0091990    0.0124163
15-18 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0070861   -0.0290073    0.0148351
15-18 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0058379   -0.0164672    0.0047915
15-18 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0136807   -0.0325136    0.0051523
15-18 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0005260   -0.0088476    0.0098995
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0036438   -0.0118417    0.0191293
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0016278   -0.0083347    0.0115903
15-18 months   ki1000109-EE              PAKISTAN                       1                    NA                 0.0099406   -0.0120399    0.0319212
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0349878   -0.0704609    0.0004852
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0014552   -0.0017781    0.0046884
15-18 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0086669   -0.0277853    0.0104514
15-18 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0044214   -0.0069195    0.0157622
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0023248   -0.0019125    0.0065620
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0031038   -0.0121705    0.0059628
18-21 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0118541   -0.0396763    0.0159682
18-21 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0001601   -0.0100322    0.0103525
18-21 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0094490   -0.0064926    0.0253905
18-21 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0056960   -0.0166038    0.0052118
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0056574   -0.0113441    0.0226589
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0059452   -0.0161462    0.0042557
18-21 months   ki1000109-EE              PAKISTAN                       1                    NA                -0.0056258   -0.0276822    0.0164306
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0015537   -0.0014653    0.0045727
18-21 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0155349   -0.0065101    0.0375799
18-21 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0115565   -0.0237342    0.0006212
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0047082   -0.0049569    0.0143733
21-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0157710   -0.0018089    0.0333510
21-24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0027180   -0.0067792    0.0122152
21-24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0197877   -0.0373087   -0.0022667
21-24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0031280   -0.0054735    0.0117295
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0014763   -0.0153536    0.0124011
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0025566   -0.0061551    0.0112684
21-24 months   ki1000109-EE              PAKISTAN                       1                    NA                -0.0016665   -0.0261051    0.0227720
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0001591   -0.0027646    0.0030829
21-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0205999   -0.0457419    0.0045421
21-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0107331   -0.0020033    0.0234695

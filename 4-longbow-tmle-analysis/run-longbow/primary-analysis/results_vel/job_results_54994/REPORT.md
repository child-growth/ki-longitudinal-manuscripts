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

**Intervention Variable:** perdiar24

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
* hdlvry
* W_birthwt
* W_birthlen
* single
* W_nrooms
* month
* brthmon
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
* delta_hdlvry
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        perdiar24    n_cell      n  outcome_variable 
-------------  -------------------------  -----------------------------  ----------  -------  -----  -----------------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0%                8    243  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        143    243  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >5%              92    243  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0%               91    168  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         75    168  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >5%               2    168  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          0%                5    183  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          (0%, 5%]        146    183  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          >5%              32    183  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          0%               11    156  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]         95    156  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          >5%              50    156  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           0%               10    265  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]        107    265  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           >5%             148    265  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0%               73    211  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        135    211  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               3    211  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%               10    228  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        165    228  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              53    228  y_rate_len       
0-3 months     ki1000109-EE               PAKISTAN                       0%              204    303  y_rate_len       
0-3 months     ki1000109-EE               PAKISTAN                       (0%, 5%]         99    303  y_rate_len       
0-3 months     ki1000109-EE               PAKISTAN                       >5%               0    303  y_rate_len       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0%               29    566  y_rate_len       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        340    566  y_rate_len       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >5%             197    566  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0%               21    640  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        425    640  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >5%             194    640  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%              135    721  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        386    721  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%             200    721  y_rate_len       
0-3 months     ki1114097-CMIN             BANGLADESH                     0%                0     43  y_rate_len       
0-3 months     ki1114097-CMIN             BANGLADESH                     (0%, 5%]         19     43  y_rate_len       
0-3 months     ki1114097-CMIN             BANGLADESH                     >5%              24     43  y_rate_len       
0-3 months     ki1114097-CONTENT          PERU                           0%                1     29  y_rate_len       
0-3 months     ki1114097-CONTENT          PERU                           (0%, 5%]         14     29  y_rate_len       
0-3 months     ki1114097-CONTENT          PERU                           >5%              14     29  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0%               73   2517  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       2182   2517  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%             262   2517  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0%                6    231  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        137    231  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >5%              88    231  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0%              105    208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]        101    208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >5%               2    208  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          0%                3    230  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          (0%, 5%]        185    230  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          >5%              42    230  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          0%               13    233  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        141    233  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          >5%              79    233  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           0%                6    267  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]        106    267  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           >5%             155    267  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0%               75    243  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        166    243  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               2    243  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                9    239  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        170    239  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              60    239  y_rate_len       
3-6 months     ki1000109-EE               PAKISTAN                       0%              190    280  y_rate_len       
3-6 months     ki1000109-EE               PAKISTAN                       (0%, 5%]         90    280  y_rate_len       
3-6 months     ki1000109-EE               PAKISTAN                       >5%               0    280  y_rate_len       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0%               15    523  y_rate_len       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        327    523  y_rate_len       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >5%             181    523  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0%               12    598  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        405    598  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >5%             181    598  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%              128    695  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        377    695  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%             190    695  y_rate_len       
3-6 months     ki1114097-CMIN             BANGLADESH                     0%                0    185  y_rate_len       
3-6 months     ki1114097-CMIN             BANGLADESH                     (0%, 5%]         90    185  y_rate_len       
3-6 months     ki1114097-CMIN             BANGLADESH                     >5%              95    185  y_rate_len       
3-6 months     ki1114097-CONTENT          PERU                           0%                6    214  y_rate_len       
3-6 months     ki1114097-CONTENT          PERU                           (0%, 5%]        142    214  y_rate_len       
3-6 months     ki1114097-CONTENT          PERU                           >5%              66    214  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0%               38   1840  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       1623   1840  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%             179   1840  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0%                6    224  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        133    224  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >5%              85    224  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0%               95    198  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]        101    198  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >5%               2    198  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          0%                3    230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          (0%, 5%]        185    230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          >5%              42    230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          0%               12    230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        141    230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          >5%              77    230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           0%                3    245  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]         99    245  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           >5%             143    245  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0%               73    231  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        156    231  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               2    231  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                5    225  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        163    225  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              57    225  y_rate_len       
6-9 months     ki1000109-EE               PAKISTAN                       0%              208    304  y_rate_len       
6-9 months     ki1000109-EE               PAKISTAN                       (0%, 5%]         96    304  y_rate_len       
6-9 months     ki1000109-EE               PAKISTAN                       >5%               0    304  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0%               53    314  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         36    314  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >5%             225    314  y_rate_len       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0%                9    498  y_rate_len       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        320    498  y_rate_len       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >5%             169    498  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0%               10    565  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        383    565  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >5%             172    565  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%              131    688  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        372    688  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%             185    688  y_rate_len       
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0%                9    213  y_rate_len       
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         57    213  y_rate_len       
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >5%             147    213  y_rate_len       
6-9 months     ki1114097-CMIN             BANGLADESH                     0%                0    177  y_rate_len       
6-9 months     ki1114097-CMIN             BANGLADESH                     (0%, 5%]         75    177  y_rate_len       
6-9 months     ki1114097-CMIN             BANGLADESH                     >5%             102    177  y_rate_len       
6-9 months     ki1114097-CONTENT          PERU                           0%                6    214  y_rate_len       
6-9 months     ki1114097-CONTENT          PERU                           (0%, 5%]        141    214  y_rate_len       
6-9 months     ki1114097-CONTENT          PERU                           >5%              67    214  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0%               91   3054  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       2649   3054  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%             314   3054  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0%                6    225  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        134    225  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >5%              85    225  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0%               93    194  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         99    194  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >5%               2    194  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          0%                3    227  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]        182    227  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          >5%              42    227  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          0%               12    229  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        140    229  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          >5%              77    229  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           0%                2    235  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]         96    235  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           >5%             137    235  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%               70    233  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        161    233  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               2    233  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                5    224  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        164    224  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              55    224  y_rate_len       
9-12 months    ki1000109-EE               PAKISTAN                       0%              226    326  y_rate_len       
9-12 months    ki1000109-EE               PAKISTAN                       (0%, 5%]        100    326  y_rate_len       
9-12 months    ki1000109-EE               PAKISTAN                       >5%               0    326  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%               55    311  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         37    311  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%             219    311  y_rate_len       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0%                9    482  y_rate_len       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        310    482  y_rate_len       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >5%             163    482  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0%                9    566  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        383    566  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >5%             174    566  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%              130    674  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        366    674  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%             178    674  y_rate_len       
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                8    186  y_rate_len       
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         49    186  y_rate_len       
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%             129    186  y_rate_len       
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   0%              134   1119  y_rate_len       
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]        611   1119  y_rate_len       
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%             374   1119  y_rate_len       
9-12 months    ki1114097-CMIN             BANGLADESH                     0%                0    160  y_rate_len       
9-12 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]         68    160  y_rate_len       
9-12 months    ki1114097-CMIN             BANGLADESH                     >5%              92    160  y_rate_len       
9-12 months    ki1114097-CONTENT          PERU                           0%                6    212  y_rate_len       
9-12 months    ki1114097-CONTENT          PERU                           (0%, 5%]        140    212  y_rate_len       
9-12 months    ki1114097-CONTENT          PERU                           >5%              66    212  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0%              124   3501  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       3022   3501  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%             355   3501  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0%                6    212  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        128    212  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >5%              78    212  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0%               86    184  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         96    184  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >5%               2    184  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          0%                3    226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]        181    226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          >5%              42    226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          0%               12    230  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        141    230  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          >5%              77    230  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           0%                1    224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]         90    224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           >5%             133    224  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               67    228  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        160    228  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    228  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        164    226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              56    226  y_rate_len       
12-15 months   ki1000109-EE               PAKISTAN                       0%              201    297  y_rate_len       
12-15 months   ki1000109-EE               PAKISTAN                       (0%, 5%]         96    297  y_rate_len       
12-15 months   ki1000109-EE               PAKISTAN                       >5%               0    297  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%               56    303  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         35    303  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%             212    303  y_rate_len       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0%                9    461  y_rate_len       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        299    461  y_rate_len       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             153    461  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0%                8    532  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        356    532  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             168    532  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              127    660  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        354    660  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             179    660  y_rate_len       
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      0%                2     97  y_rate_len       
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         31     97  y_rate_len       
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      >5%              64     97  y_rate_len       
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%               88    978  y_rate_len       
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]        548    978  y_rate_len       
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%             342    978  y_rate_len       
12-15 months   ki1114097-CMIN             BANGLADESH                     0%                2    160  y_rate_len       
12-15 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]         69    160  y_rate_len       
12-15 months   ki1114097-CMIN             BANGLADESH                     >5%              89    160  y_rate_len       
12-15 months   ki1114097-CONTENT          PERU                           0%                5    199  y_rate_len       
12-15 months   ki1114097-CONTENT          PERU                           (0%, 5%]        132    199  y_rate_len       
12-15 months   ki1114097-CONTENT          PERU                           >5%              62    199  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0%              131   3549  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       3067   3549  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%             351   3549  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0%                6    212  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        127    212  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >5%              79    212  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0%               79    175  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         94    175  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >5%               2    175  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          0%                3    226  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]        182    226  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          >5%              41    226  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          0%               12    227  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        139    227  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          >5%              76    227  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           0%                1    213  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]         86    213  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           >5%             126    213  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               68    225  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        156    225  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    225  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    217  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        158    217  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              53    217  y_rate_len       
15-18 months   ki1000109-EE               PAKISTAN                       0%              189    278  y_rate_len       
15-18 months   ki1000109-EE               PAKISTAN                       (0%, 5%]         89    278  y_rate_len       
15-18 months   ki1000109-EE               PAKISTAN                       >5%               0    278  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%               56    291  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         33    291  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%             202    291  y_rate_len       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0%                7    449  y_rate_len       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        295    449  y_rate_len       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             147    449  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0%                8    528  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        355    528  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             165    528  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              125    604  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        321    604  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             158    604  y_rate_len       
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%               77   1021  y_rate_len       
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]        581   1021  y_rate_len       
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%             363   1021  y_rate_len       
15-18 months   ki1114097-CMIN             BANGLADESH                     0%                3    163  y_rate_len       
15-18 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]         70    163  y_rate_len       
15-18 months   ki1114097-CMIN             BANGLADESH                     >5%              90    163  y_rate_len       
15-18 months   ki1114097-CONTENT          PERU                           0%                5    189  y_rate_len       
15-18 months   ki1114097-CONTENT          PERU                           (0%, 5%]        124    189  y_rate_len       
15-18 months   ki1114097-CONTENT          PERU                           >5%              60    189  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0%              120   3550  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       3079   3550  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%             351   3550  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0%                6    209  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        129    209  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >5%              74    209  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0%               75    167  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         90    167  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >5%               2    167  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          0%                3    226  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]        182    226  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          >5%              41    226  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          0%               12    227  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        139    227  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          >5%              76    227  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           0%                1    202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]         86    202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           >5%             115    202  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               69    233  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        163    233  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    233  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    204  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        148    204  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              50    204  y_rate_len       
18-21 months   ki1000109-EE               PAKISTAN                       0%              173    254  y_rate_len       
18-21 months   ki1000109-EE               PAKISTAN                       (0%, 5%]         81    254  y_rate_len       
18-21 months   ki1000109-EE               PAKISTAN                       >5%               0    254  y_rate_len       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0%                5    422  y_rate_len       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        274    422  y_rate_len       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             143    422  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0%                7    541  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        367    541  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             167    541  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              123    546  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        290    546  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             133    546  y_rate_len       
18-21 months   ki1114097-CMIN             BANGLADESH                     0%                2    165  y_rate_len       
18-21 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]         72    165  y_rate_len       
18-21 months   ki1114097-CMIN             BANGLADESH                     >5%              91    165  y_rate_len       
18-21 months   ki1114097-CONTENT          PERU                           0%                4    183  y_rate_len       
18-21 months   ki1114097-CONTENT          PERU                           (0%, 5%]        122    183  y_rate_len       
18-21 months   ki1114097-CONTENT          PERU                           >5%              57    183  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                6    207  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        127    207  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%              74    207  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0%               73    165  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         91    165  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >5%               1    165  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          0%                3    226  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]        182    226  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          >5%              41    226  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          0%               11    227  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        140    227  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          >5%              76    227  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           0%                1    189  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]         80    189  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           >5%             108    189  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               71    235  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        163    235  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    235  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    204  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        148    204  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              50    204  y_rate_len       
21-24 months   ki1000109-EE               PAKISTAN                       0%               75    106  y_rate_len       
21-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]         31    106  y_rate_len       
21-24 months   ki1000109-EE               PAKISTAN                       >5%               0    106  y_rate_len       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                5    411  y_rate_len       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        267    411  y_rate_len       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             139    411  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                8    471  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        320    471  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             143    471  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              122    490  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        260    490  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             108    490  y_rate_len       
21-24 months   ki1114097-CMIN             BANGLADESH                     0%                2    133  y_rate_len       
21-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]         61    133  y_rate_len       
21-24 months   ki1114097-CMIN             BANGLADESH                     >5%              70    133  y_rate_len       
21-24 months   ki1114097-CONTENT          PERU                           0%                0     38  y_rate_len       
21-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]         26     38  y_rate_len       
21-24 months   ki1114097-CONTENT          PERU                           >5%              12     38  y_rate_len       


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/06d1abe9-5cb7-437f-8ae7-2e37f293dac5/10eaf58f-989a-422a-9c5b-4537f6a9466c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/06d1abe9-5cb7-437f-8ae7-2e37f293dac5/10eaf58f-989a-422a-9c5b-4537f6a9466c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/06d1abe9-5cb7-437f-8ae7-2e37f293dac5/10eaf58f-989a-422a-9c5b-4537f6a9466c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 3.3021986    2.9217197   3.6826775
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                 3.3458080    3.2617953   3.4298208
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                 3.3319432    3.2227784   3.4411081
0-3 months     ki0047075b-MAL-ED          INDIA                          0%                   NA                 3.9765054    2.4394476   5.5135632
0-3 months     ki0047075b-MAL-ED          INDIA                          (0%, 5%]             NA                 3.3457689    3.2534687   3.4380691
0-3 months     ki0047075b-MAL-ED          INDIA                          >5%                  NA                 3.2612624    2.9966705   3.5258543
0-3 months     ki0047075b-MAL-ED          NEPAL                          0%                   NA                 3.7617692    3.2847623   4.2387762
0-3 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                 3.5521962    3.4314765   3.6729159
0-3 months     ki0047075b-MAL-ED          NEPAL                          >5%                  NA                 3.7035144    3.5597750   3.8472538
0-3 months     ki0047075b-MAL-ED          PERU                           0%                   NA                 2.9705745    2.7839745   3.1571745
0-3 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                 3.0206596    2.9121891   3.1291301
0-3 months     ki0047075b-MAL-ED          PERU                           >5%                  NA                 3.0763002    2.9870001   3.1656003
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 3.3369945    2.8961526   3.7778363
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 3.2917651    3.2064404   3.3770897
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 3.1695719    2.9922272   3.3469166
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 2.8888067    2.6307304   3.1468830
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                 3.0876528    3.0229703   3.1523352
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                 3.1763768    3.0834758   3.2692778
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 3.1716032    2.8930631   3.4501434
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                 3.2634472    3.2192857   3.3076086
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                 3.2560091    3.1867907   3.3252275
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 3.0186068    2.9535264   3.0836872
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                 3.1359316    3.0846815   3.1871817
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                 3.1881187    3.1137160   3.2625215
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                 2.6083833    2.0832775   3.1334892
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                 3.0235885    2.9681173   3.0790596
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                 2.9686312    2.8280791   3.1091832
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 1.8472373    1.5841576   2.1103170
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                 1.9559532    1.8905162   2.0213902
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                 1.8890455    1.8081193   1.9699716
3-6 months     ki0047075b-MAL-ED          NEPAL                          0%                   NA                 2.0237687    1.7690416   2.2784958
3-6 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                 1.9762994    1.9089074   2.0436914
3-6 months     ki0047075b-MAL-ED          NEPAL                          >5%                  NA                 1.8956250    1.7866555   2.0045944
3-6 months     ki0047075b-MAL-ED          PERU                           0%                   NA                 1.9003923    1.5861984   2.2145862
3-6 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                 2.0310710    1.9251510   2.1369910
3-6 months     ki0047075b-MAL-ED          PERU                           >5%                  NA                 2.0096210    1.9226595   2.0965824
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 1.5432136    1.1170539   1.9693733
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 1.8315269    1.7506892   1.9123645
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 1.8690510    1.7441477   1.9939543
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 1.8697300    1.5503790   2.1890811
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                 1.8401297    1.7796201   1.9006393
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                 1.8181129    1.7343273   1.9018985
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 1.7737195    1.5527312   1.9947079
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                 1.9535749    1.9114331   1.9957168
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                 2.0067764    1.9495414   2.0640115
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 2.0832989    1.9972617   2.1693361
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                 1.9958088    1.9446733   2.0469442
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                 1.9731232    1.9093537   2.0368928
3-6 months     ki1114097-CONTENT          PERU                           0%                   NA                 2.0933002    1.8015225   2.3850780
3-6 months     ki1114097-CONTENT          PERU                           (0%, 5%]             NA                 2.0736534    2.0175221   2.1297847
3-6 months     ki1114097-CONTENT          PERU                           >5%                  NA                 2.1060124    2.0120781   2.1999467
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                 2.0500695    1.8590064   2.2411325
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                 1.8910475    1.8587406   1.9233543
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                 1.9270368    1.8595666   1.9945070
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 1.1305121    0.9616113   1.2994128
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                 1.2310432    1.1795257   1.2825607
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                 1.2829445    1.2181463   1.3477428
6-9 months     ki0047075b-MAL-ED          NEPAL                          0%                   NA                 1.2111096    1.0277429   1.3944763
6-9 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                 1.3606242    1.3048948   1.4163537
6-9 months     ki0047075b-MAL-ED          NEPAL                          >5%                  NA                 1.3617220    1.2822598   1.4411841
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 1.0912359    0.6053347   1.5771372
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 1.2286494    1.1382813   1.3190176
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 1.0911223    0.9353485   1.2468960
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                 1.2790860    1.2294495   1.3287225
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                 1.1069717    0.8888869   1.3250565
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  NA                 1.1398364    1.0851451   1.1945277
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 1.3406068    1.2084865   1.4727272
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                 1.2841507    1.2327057   1.3355956
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                 1.1969980    1.1294922   1.2645038
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 1.3806943    1.2479833   1.5134053
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                 1.2837816    1.2534774   1.3140858
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                 1.2706925    1.2228251   1.3185599
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 1.3117577    1.2462129   1.3773025
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                 1.3193031    1.2783894   1.3602168
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                 1.3385351    1.2798795   1.3971907
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                 1.1744435    0.9935659   1.3553210
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             NA                 1.2033559    1.1288814   1.2778305
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >5%                  NA                 1.1572016    1.1012953   1.2131079
6-9 months     ki1114097-CONTENT          PERU                           0%                   NA                 1.2169251    1.1218285   1.3120217
6-9 months     ki1114097-CONTENT          PERU                           (0%, 5%]             NA                 1.3801781    1.3219369   1.4384192
6-9 months     ki1114097-CONTENT          PERU                           >5%                  NA                 1.4498806    1.3645877   1.5351734
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                 1.3726143    1.2387039   1.5065246
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                 1.3265110    1.3046751   1.3483469
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                 1.2920827    1.2242833   1.3598821
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 1.0883735    0.7441498   1.4325973
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                 0.9965391    0.9467689   1.0463093
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                 0.9718064    0.9111275   1.0324854
9-12 months    ki0047075b-MAL-ED          NEPAL                          0%                   NA                 1.1482155    0.9345121   1.3619189
9-12 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                 1.1026331    1.0517373   1.1535288
9-12 months    ki0047075b-MAL-ED          NEPAL                          >5%                  NA                 1.0378615    0.9655185   1.1102045
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.8130985    0.3267417   1.2994553
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.8062014    0.7185433   0.8938595
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.8337017    0.6377627   1.0296408
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                 4.4947024    4.0946613   4.8947436
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                 0.8209601    0.1811840   1.4607362
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  NA                 0.8010851    0.5636417   1.0385285
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 1.2001932    1.1044094   1.2959769
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                 1.0922112    1.0489878   1.1354345
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                 1.0755140    1.0125326   1.1384954
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.7470551    0.6447823   0.8493280
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                 1.0567074    1.0240387   1.0893761
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                 1.0508242    1.0024014   1.0992470
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 1.1420452    1.0798085   1.2042819
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                 1.1219671    1.0862268   1.1577074
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                 1.1196347    1.0661521   1.1731172
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                 1.0709260    0.9273635   1.2144886
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             NA                 1.0387623    0.9713516   1.1061731
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                  NA                 1.0364088    0.9869943   1.0858232
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   NA                 1.1466494    1.0452539   1.2480448
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             NA                 1.0955389    1.0647016   1.1263762
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  NA                 1.0744808    1.0009854   1.1479762
9-12 months    ki1114097-CONTENT          PERU                           0%                   NA                 1.1908255    0.9470280   1.4346229
9-12 months    ki1114097-CONTENT          PERU                           (0%, 5%]             NA                 1.2200195    1.1697003   1.2703386
9-12 months    ki1114097-CONTENT          PERU                           >5%                  NA                 1.1740334    1.1075334   1.2405334
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                 1.0181784    0.9124917   1.1238652
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                 1.0729962    1.0535490   1.0924434
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                 1.0745763    1.0287919   1.1203608
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 1.2032191    0.9300118   1.4764264
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                 0.8873480    0.8406046   0.9340913
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                 0.9357621    0.8629274   1.0085968
12-15 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                 0.9428178    0.7089135   1.1767221
12-15 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                 0.9576341    0.9081610   1.0071072
12-15 months   ki0047075b-MAL-ED          NEPAL                          >5%                  NA                 0.9716491    0.9014331   1.0418651
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.7107239    0.2928226   1.1286253
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.8696817    0.7929748   0.9463887
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.8329333    0.7116708   0.9541958
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                -0.3665055   -0.9275401   0.1945290
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                 1.0549896    0.8695710   1.2404082
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  NA                 1.0744672    0.9975849   1.1513495
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 0.6016726    0.4554164   0.7479287
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                 0.7209448    0.6592168   0.7826729
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                 0.7376552    0.6806844   0.7946260
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 1.1327244    0.9504387   1.3150102
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                 0.9509951    0.9199241   0.9820661
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                 0.9700653    0.9223112   1.0178195
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.9453597    0.8890169   1.0017025
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                 0.9791447    0.9465944   1.0116951
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                 0.9714388    0.9193107   1.0235669
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   NA                 0.9113298    0.8100953   1.0125642
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             NA                 0.9920592    0.9355858   1.0485326
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  NA                 0.9400623    0.8839165   0.9962080
12-15 months   ki1114097-CONTENT          PERU                           0%                   NA                 0.6829053    0.5326891   0.8331216
12-15 months   ki1114097-CONTENT          PERU                           (0%, 5%]             NA                 0.9419988    0.8867016   0.9972959
12-15 months   ki1114097-CONTENT          PERU                           >5%                  NA                 0.9216348    0.8571246   0.9861451
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                 0.9842004    0.9036650   1.0647358
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                 0.9392117    0.9220184   0.9564051
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                 0.9509657    0.9081258   0.9938056
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 0.7970241    0.5267839   1.0672642
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                 0.8212715    0.7778707   0.8646724
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                 0.8307640    0.7634759   0.8980521
15-18 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                 0.8360627    0.6300557   1.0420698
15-18 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                 0.8493626    0.7954865   0.9032386
15-18 months   ki0047075b-MAL-ED          NEPAL                          >5%                  NA                 0.7752057    0.7059312   0.8444803
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.7615997    0.3156013   1.2075982
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.6690870    0.5986233   0.7395506
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.7309239    0.6063087   0.8555391
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                 0.9340046    0.8901653   0.9778439
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                 0.8000144    0.5254266   1.0746021
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  NA                 0.7823322    0.7215047   0.8431598
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 1.2585941    0.9710538   1.5461344
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                 0.7723298    0.7223528   0.8223069
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                 0.7505247    0.6854327   0.8156167
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.9237552    0.7891671   1.0583433
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                 0.8642394    0.8348970   0.8935818
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                 0.8353071    0.7926425   0.8779717
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.9228567    0.8686893   0.9770240
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                 0.9269520    0.8948283   0.9590758
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                 0.8952789    0.8518296   0.9387282
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   NA                 0.8849117    0.8238552   0.9459682
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             NA                 0.9366141    0.8846796   0.9885486
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  NA                 0.9165847    0.8449011   0.9882682
15-18 months   ki1114097-CONTENT          PERU                           0%                   NA                 1.1730271    0.9064508   1.4396035
15-18 months   ki1114097-CONTENT          PERU                           (0%, 5%]             NA                 1.0072816    0.9477908   1.0667725
15-18 months   ki1114097-CONTENT          PERU                           >5%                  NA                 0.9265053    0.8603342   0.9926763
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                 0.9051452    0.8225591   0.9877312
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                 0.8613231    0.8431702   0.8794760
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                 0.8333017    0.7864082   0.8801952
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 0.8204084    0.6348865   1.0059302
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                 0.7918543    0.7468722   0.8368364
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                 0.8503481    0.7961436   0.9045525
18-21 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                 0.8801669    0.6382085   1.1221253
18-21 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                 0.8101963    0.7603966   0.8599959
18-21 months   ki0047075b-MAL-ED          NEPAL                          >5%                  NA                 0.8342658    0.7763935   0.8921381
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.8052936    0.2028801   1.4077071
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.7726463    0.6962076   0.8490850
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.6506433    0.5143886   0.7868980
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 0.4799290    0.4013646   0.5584935
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                 0.7187969    0.6751662   0.7624276
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                 0.7576920    0.6927672   0.8226167
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.9153757    0.8195201   1.0112314
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                 0.8353011    0.8061772   0.8644250
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                 0.8450212    0.8017131   0.8883294
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.8054765    0.7542380   0.8567150
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                 0.8071897    0.7751500   0.8392294
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                 0.7729022    0.7269931   0.8188114
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 0.8202989    0.6919530   0.9486448
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                 0.7838728    0.7400896   0.8276561
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                 0.7404856    0.6770923   0.8038790
21-24 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                 0.7319697    0.5947302   0.8692091
21-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                 0.7979341    0.7419344   0.8539337
21-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  NA                 0.7867561    0.7230317   0.8504804
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.5316857    0.2231655   0.8402059
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.7151343    0.6355503   0.7947183
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.7526459    0.6431800   0.8621118
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 0.8700507    0.7243845   1.0157169
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                 0.7170223    0.6737174   0.7603272
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                 0.7120957    0.6491679   0.7750234
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.5396483    0.4846511   0.5946455
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                 0.7778973    0.7461222   0.8096724
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                 0.7426166    0.6999615   0.7852717
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.8071943    0.7578950   0.8564936
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                 0.7986505    0.7650544   0.8322466
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                 0.7927565    0.7350842   0.8504289


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.3391231   3.2734666   3.4047796
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.3482250   3.2503342   3.4461159
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.6234175   3.5314103   3.7154247
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.0519536   2.9854854   3.1184219
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2644991   3.1874675   3.3415308
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                3.1100116   3.0566021   3.1634210
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                3.0073628   2.9543803   3.0603453
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9276407   1.8774065   1.9778750
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9644601   1.9083113   2.0206088
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0156821   1.9494666   2.0818976
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                2.0841841   2.0362519   2.1321163
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.8983676   1.8684335   1.9283018
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.3571408   1.3129874   1.4012943
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1907556   1.1129385   1.2685726
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.1426155   1.1021386   1.1830923
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.2555950   1.2150667   1.2961234
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.1702813   1.1261029   1.2144597
6-9 months     ki1114097-CONTENT          PERU                           NA                   NA                1.3974236   1.3502187   1.4446285
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.3242433   1.3035625   1.3449241
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.0892372   1.0484769   1.1299974
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8131077   0.7319679   0.8942474
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8106649   0.6745544   0.9467754
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.0885809   1.0534446   1.1237171
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.0385134   0.9994107   1.0776161
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                1.0927974   1.0590753   1.1265195
9-12 months    ki1114097-CONTENT          PERU                           NA                   NA                1.2048768   1.1650186   1.2447350
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.0714791   1.0535276   1.0894307
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.9514124   0.9120195   0.9908054
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8563558   0.7920248   0.9206869
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.0267825   0.9374856   1.1160794
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7241623   0.6797013   0.7686233
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.9658283   0.9236309   1.0080257
12-15 months   ki1114097-CONTENT          PERU                           NA                   NA                0.9291443   0.8867697   0.9715190
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.9415306   0.9256966   0.9573645
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8408362   0.7994023   0.8822700
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6867479   0.6257076   0.7477883
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7947861   0.7590601   0.8305122
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7727719   0.7325606   0.8129832
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.9228413   0.8852625   0.9604201
15-18 months   ki1114097-CONTENT          PERU                           NA                   NA                0.9860231   0.9406097   1.0314365
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8599177   0.8433915   0.8764438
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8182798   0.7801724   0.8563871
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7437038   0.6761886   0.8112190
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7291468   0.6930874   0.7652062
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.7833565   0.7426056   0.8241074
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7189328   0.6544287   0.7834368
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7172178   0.6817161   0.7527194
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.0436094   -0.3460344    0.4332533
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                 0.0297447   -0.3660850    0.4255743
0-3 months     ki0047075b-MAL-ED          INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          (0%, 5%]             0%                -0.6307366   -2.1705632    0.9090900
0-3 months     ki0047075b-MAL-ED          INDIA                          >5%                  0%                -0.7152431   -2.2749083    0.8444221
0-3 months     ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.2095730   -0.7019389    0.2827928
0-3 months     ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.0582549   -0.5569833    0.4404735
0-3 months     ki0047075b-MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]             0%                 0.0500851   -0.1665753    0.2667456
0-3 months     ki0047075b-MAL-ED          PERU                           >5%                  0%                 0.1057257   -0.1016523    0.3131037
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0452294   -0.4944450    0.4039862
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.1674226   -0.6421836    0.3073385
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                 0.1988461   -0.0664705    0.4641627
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                 0.2875701    0.0136682    0.5614720
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0918439   -0.1901827    0.3738705
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.0844059   -0.2026722    0.3714839
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.1173248    0.0345538    0.2000958
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                 0.1695120    0.0705641    0.2684598
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                 0.4152051   -0.1131245    0.9435347
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                 0.3602478   -0.1823151    0.9028107
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.1087159   -0.1623799    0.3798117
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                 0.0418082   -0.2334371    0.3170535
3-6 months     ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0474693   -0.3108809    0.2159423
3-6 months     ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.1281437   -0.4052749    0.1489875
3-6 months     ki0047075b-MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]             0%                 0.1306786   -0.2008886    0.4622459
3-6 months     ki0047075b-MAL-ED          PERU                           >5%                  0%                 0.1092286   -0.2167777    0.4352349
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.2883133   -0.1454456    0.7220722
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.3258374   -0.1182492    0.7699240
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                -0.0296003   -0.3552020    0.2960014
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                -0.0516171   -0.3822664    0.2790321
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.1798554   -0.0451382    0.4048490
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.2330569    0.0046471    0.4614667
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0874901   -0.1872983    0.0123181
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                -0.1101757   -0.2169092   -0.0034421
3-6 months     ki1114097-CONTENT          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           (0%, 5%]             0%                -0.0196469   -0.3167748    0.2774810
3-6 months     ki1114097-CONTENT          PERU                           >5%                  0%                 0.0127122   -0.2938134    0.3192377
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                -0.1590220   -0.3530090    0.0349650
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.1230327   -0.3275443    0.0814789
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.1005312   -0.0760517    0.2771140
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                 0.1524325   -0.0284716    0.3333365
6-9 months     ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                 0.1495146   -0.0423567    0.3413860
6-9 months     ki0047075b-MAL-ED          NEPAL                          >5%                  0%                 0.1506124   -0.0492885    0.3505133
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.1374135   -0.3568196    0.6316467
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0001137   -0.5103739    0.5101466
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                -0.1721143   -0.3962670    0.0520385
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  0%                -0.1392496   -0.2128297   -0.0656695
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                -0.0564562   -0.1982390    0.0853266
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                -0.1436089   -0.2919760    0.0047583
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                -0.0969127   -0.2329519    0.0391265
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                -0.1100018   -0.2510716    0.0310680
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.0075453   -0.0699679    0.0850585
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                 0.0267774   -0.0613648    0.1149195
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             0%                 0.0289125   -0.1666972    0.2245222
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >5%                  0%                -0.0172418   -0.2065622    0.1720785
6-9 months     ki1114097-CONTENT          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT          PERU                           (0%, 5%]             0%                 0.1632530    0.0517389    0.2747671
6-9 months     ki1114097-CONTENT          PERU                           >5%                  0%                 0.2329555    0.1052127    0.3606983
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                -0.0461033   -0.1823871    0.0901805
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.0805316   -0.2302184    0.0691552
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.0918344   -0.4396376    0.2559688
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.1165671   -0.4660981    0.2329640
9-12 months    ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0455825   -0.2650281    0.1738632
9-12 months    ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.1103540   -0.3358863    0.1151783
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0068971   -0.5010903    0.4872960
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0206032   -0.5037393    0.5449457
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                -3.6737423   -4.4324430   -2.9150417
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  0%                -3.6936174   -4.1669489   -3.2202858
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                -0.1079820   -0.2130667   -0.0028974
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                -0.1246792   -0.2393142   -0.0100442
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.3096523    0.2022885    0.4170160
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.3037691    0.1906121    0.4169261
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0200781   -0.0920148    0.0518585
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0224106   -0.1049024    0.0600812
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             0%                -0.0321637   -0.1907651    0.1264377
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                  0%                -0.0345173   -0.1863461    0.1173115
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             0%                -0.0511105   -0.1648187    0.0625977
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  0%                -0.0721686   -0.1786106    0.0342735
9-12 months    ki1114097-CONTENT          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT          PERU                           (0%, 5%]             0%                 0.0291940   -0.2197421    0.2781301
9-12 months    ki1114097-CONTENT          PERU                           >5%                  0%                -0.0167921   -0.2694963    0.2359122
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                 0.0548178   -0.0527152    0.1623507
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                 0.0563979   -0.0582440    0.1710397
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.3158711   -0.5930483   -0.0386940
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.2674570   -0.5502062    0.0152922
12-15 months   ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                 0.0148163   -0.2238618    0.2534944
12-15 months   ki0047075b-MAL-ED          NEPAL                          >5%                  0%                 0.0288313   -0.2156048    0.2732673
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.1589578   -0.2659251    0.5838407
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1222094   -0.3129298    0.5573486
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                 1.4214952    0.8314531    2.0115372
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  0%                 1.4409727    0.8751767    2.0067688
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                 0.1192723   -0.0394766    0.2780212
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                 0.1359826   -0.0209777    0.2929429
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                -0.1817293   -0.3666442    0.0031855
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                -0.1626591   -0.3510962    0.0257780
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.0337850   -0.0311569    0.0987270
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                 0.0260791   -0.0505657    0.1027239
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             0%                 0.0807294   -0.0224005    0.1838593
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  0%                 0.0287325   -0.0844568    0.1419218
12-15 months   ki1114097-CONTENT          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT          PERU                           (0%, 5%]             0%                 0.2590934    0.0990225    0.4191644
12-15 months   ki1114097-CONTENT          PERU                           >5%                  0%                 0.2387295    0.0752471    0.4022119
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                -0.0449887   -0.1273428    0.0373654
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.0332347   -0.1242282    0.0577588
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.0242475   -0.2494556    0.2979506
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                 0.0337400   -0.2447514    0.3122313
15-18 months   ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                 0.0132999   -0.1995003    0.2261000
15-18 months   ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.0608570   -0.2780993    0.1563853
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0925128   -0.5440432    0.3590177
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0306758   -0.4937563    0.4324047
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                -0.1339902   -0.4119432    0.1439628
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  0%                -0.1516724   -0.2268003   -0.0765444
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                -0.4862642   -0.7781155   -0.1944130
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                -0.5080694   -0.8028852   -0.2132535
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                -0.0595158   -0.1972653    0.0782337
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                -0.0884481   -0.2296367    0.0527406
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.0040954   -0.0589499    0.0671406
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0275778   -0.0970762    0.0419207
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             0%                 0.0517024   -0.0312807    0.1346856
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  0%                 0.0316729   -0.0689731    0.1323190
15-18 months   ki1114097-CONTENT          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT          PERU                           (0%, 5%]             0%                -0.1657455   -0.4388793    0.1073884
15-18 months   ki1114097-CONTENT          PERU                           >5%                  0%                -0.2465219   -0.5211881    0.0281444
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                -0.0438221   -0.1285945    0.0409502
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.0718435   -0.1664085    0.0227214
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.0285541   -0.2194513    0.1623432
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                 0.0299397   -0.1633385    0.2232180
18-21 months   ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0699706   -0.3171961    0.1772548
18-21 months   ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.0459011   -0.2946892    0.2028870
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0326473   -0.6398910    0.5745965
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.1546503   -0.7722808    0.4629802
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                 0.2388679    0.1490013    0.3287345
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                 0.2777630    0.1758434    0.3796825
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                -0.0800746   -0.1802570    0.0201077
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                -0.0703545   -0.1755396    0.0348306
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.0017132   -0.0588167    0.0622430
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0325743   -0.1010706    0.0359221
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.0364261   -0.1720345    0.0991824
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.0798133   -0.2229614    0.0633349
21-24 months   ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                 0.0659644   -0.0824431    0.2143719
21-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  0%                 0.0547864   -0.0961880    0.2057609
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.1834486   -0.1351708    0.5020680
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.2209602   -0.1064043    0.5483247
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                -0.1530284   -0.3049954   -0.0010615
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                -0.1579550   -0.3166325    0.0007224
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.2382490    0.1747324    0.3017656
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.2029683    0.1333684    0.2725683
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0085438   -0.0682807    0.0511930
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0144378   -0.0904005    0.0615249


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 0.0369245   -0.3366303    0.4104793
0-3 months     ki0047075b-MAL-ED          INDIA                          0%                   NA                -0.6282804   -2.1259548    0.8693939
0-3 months     ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.1383517   -0.5940649    0.3173614
0-3 months     ki0047075b-MAL-ED          PERU                           0%                   NA                 0.0813791   -0.1091118    0.2718701
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0724953   -0.5024543    0.3574637
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 0.2212049   -0.0289963    0.4714060
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.0860778   -0.1865545    0.3587100
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.1106381    0.0472072    0.1740691
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                 0.3989794   -0.1150152    0.9129741
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 0.0804035   -0.1806311    0.3414380
3-6 months     ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.0593086   -0.3060717    0.1874545
3-6 months     ki0047075b-MAL-ED          PERU                           0%                   NA                 0.1152898   -0.1980254    0.4286050
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.2868766   -0.1284995    0.7022528
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.0370385   -0.3521561    0.2780790
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.1920262   -0.0262827    0.4103351
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0775016   -0.1549482   -0.0000551
3-6 months     ki1114097-CONTENT          PERU                           0%                   NA                -0.0091161   -0.2966190    0.2783867
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.1517019   -0.3404967    0.0370930
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 0.1175331   -0.0515149    0.2865810
6-9 months     ki0047075b-MAL-ED          NEPAL                          0%                   NA                 0.1460312   -0.0332026    0.3252651
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0995197   -0.3804288    0.5794681
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                -0.1364705   -0.1904610   -0.0824800
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.0850118   -0.2200138    0.0499902
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -0.0982758   -0.2300420    0.0334903
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.0165118   -0.0437653    0.0767888
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                -0.0041621   -0.1827780    0.1744537
6-9 months     ki1114097-CONTENT          PERU                           0%                   NA                 0.1804985    0.0767461    0.2842509
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0483710   -0.1805583    0.0838164
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.0987290   -0.4358726    0.2384147
9-12 months    ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.0589784   -0.2668084    0.1488517
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0000091   -0.4809269    0.4809451
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                -3.6840376   -4.0665529   -3.3015222
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.1116123   -0.2113638   -0.0118609
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.3029199    0.1996547    0.4061850
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0185708   -0.0747848    0.0376433
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                -0.0324126   -0.1751232    0.1102979
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   NA                -0.0538520   -0.1446720    0.0369681
9-12 months    ki1114097-CONTENT          PERU                           0%                   NA                 0.0140513   -0.2260767    0.2541794
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                 0.0533007   -0.0500811    0.1566825
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.2891186   -0.5575319   -0.0207054
12-15 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                 0.0085946   -0.2183276    0.2355168
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.1456319   -0.2660804    0.5573442
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                 1.3932881    0.8601179    1.9264582
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 0.1224897   -0.0268358    0.2718152
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -0.1729744   -0.3525601    0.0066113
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.0257798   -0.0253725    0.0769320
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   NA                 0.0544985   -0.0382338    0.1472308
12-15 months   ki1114097-CONTENT          PERU                           0%                   NA                 0.2462390    0.0938362    0.3986418
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0426699   -0.1215000    0.0361602
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 0.0270985   -0.2379674    0.2921645
15-18 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                 0.0047734   -0.1957298    0.2052767
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0748518   -0.5126196    0.3629160
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                -0.1392184   -0.1894186   -0.0890183
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.4858222   -0.7689518   -0.2026925
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -0.0676554   -0.2010284    0.0657177
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0051399   -0.0537081    0.0434283
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   NA                 0.0379296   -0.0351010    0.1109602
15-18 months   ki1114097-CONTENT          PERU                           0%                   NA                -0.1870040   -0.4503770    0.0763691
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0452275   -0.1268584    0.0364033
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.0070236   -0.1903920    0.1763448
18-21 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.0618871   -0.2941639    0.1703897
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0615898   -0.6499036    0.5267241
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 0.2492178    0.1645772    0.3338584
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -0.0760381   -0.1724972    0.0204211
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0077010   -0.0527170    0.0373150
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.0508806   -0.1804032    0.0786420
21-24 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                 0.0513868   -0.0863318    0.1891054
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.1872471   -0.1189333    0.4934274
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.1528330   -0.2991821   -0.0064838
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.2234908    0.1641755    0.2828061
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0078590   -0.0513714    0.0356535

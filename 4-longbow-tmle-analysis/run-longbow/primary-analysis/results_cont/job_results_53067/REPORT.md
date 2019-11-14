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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** nhh

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* cleanck
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country      nhh          n_cell     n
----------  -------------------------  -----------  ----------  -------  ----
Birth       ki1000108-IRC              INDIA        3 or less        54   388
Birth       ki1000108-IRC              INDIA        4-5             150   388
Birth       ki1000108-IRC              INDIA        6-7             103   388
Birth       ki1000108-IRC              INDIA        8+               81   388
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less       112   608
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5             255   608
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7             138   608
Birth       ki1017093-NIH-Birth        BANGLADESH   8+              103   608
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less       104   539
Birth       ki1017093b-PROVIDE         BANGLADESH   4-5             251   539
Birth       ki1017093b-PROVIDE         BANGLADESH   6-7             116   539
Birth       ki1017093b-PROVIDE         BANGLADESH   8+               68   539
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less       108   732
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5             328   732
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7             176   732
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+              120   732
6 months    ki1000108-IRC              INDIA        3 or less        58   407
6 months    ki1000108-IRC              INDIA        4-5             158   407
6 months    ki1000108-IRC              INDIA        6-7             106   407
6 months    ki1000108-IRC              INDIA        8+               85   407
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less        33   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5             166   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7             115   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+               66   380
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less        95   537
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5             227   537
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7             128   537
6 months    ki1017093-NIH-Birth        BANGLADESH   8+               87   537
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less       105   604
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5             289   604
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7             130   604
6 months    ki1017093b-PROVIDE         BANGLADESH   8+               80   604
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less       104   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5             326   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7             170   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+              115   715
6 months    ki1148112-LCNI-5           MALAWI       3 or less       224   816
6 months    ki1148112-LCNI-5           MALAWI       4-5             340   816
6 months    ki1148112-LCNI-5           MALAWI       6-7             182   816
6 months    ki1148112-LCNI-5           MALAWI       8+               70   816
24 months   ki1000108-IRC              INDIA        3 or less        58   409
24 months   ki1000108-IRC              INDIA        4-5             158   409
24 months   ki1000108-IRC              INDIA        6-7             107   409
24 months   ki1000108-IRC              INDIA        8+               86   409
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less        75   429
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5             184   429
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7             100   429
24 months   ki1017093-NIH-Birth        BANGLADESH   8+               70   429
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less       106   578
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5             273   578
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7             117   578
24 months   ki1017093b-PROVIDE         BANGLADESH   8+               82   578
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less        69   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5             232   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7             130   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+               83   514
24 months   ki1148112-LCNI-5           MALAWI       3 or less       159   574
24 months   ki1148112-LCNI-5           MALAWI       4-5             237   574
24 months   ki1148112-LCNI-5           MALAWI       6-7             129   574
24 months   ki1148112-LCNI-5           MALAWI       8+               49   574


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/2f145580-28ea-4c64-b474-06e4929ffacc/74157b98-4598-470b-9352-c65f609a90ea/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2f145580-28ea-4c64-b474-06e4929ffacc/74157b98-4598-470b-9352-c65f609a90ea/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2f145580-28ea-4c64-b474-06e4929ffacc/74157b98-4598-470b-9352-c65f609a90ea/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        3 or less            NA                 0.0308064   -0.3516943    0.4133071
Birth       ki1000108-IRC              INDIA        4-5                  NA                -0.4557190   -0.7242950   -0.1871429
Birth       ki1000108-IRC              INDIA        6-7                  NA                -0.4441713   -0.7782395   -0.1101032
Birth       ki1000108-IRC              INDIA        8+                   NA                -0.1365393   -0.4550364    0.1819578
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.9306835   -1.1765765   -0.6847904
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -0.9268742   -1.0613101   -0.7924383
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -0.8904707   -1.0728398   -0.7081015
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -1.0022272   -1.2308966   -0.7735577
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.9909345   -1.1528734   -0.8289955
Birth       ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -0.8398666   -0.9501400   -0.7295932
Birth       ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -0.8666212   -1.0432243   -0.6900181
Birth       ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -0.9035602   -1.1047183   -0.7024021
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.9436556   -1.0986976   -0.7886135
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -0.8819721   -0.9945902   -0.7693541
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -0.8558894   -1.0535850   -0.6581937
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                -1.0193830   -1.2042892   -0.8344767
6 months    ki1000108-IRC              INDIA        3 or less            NA                -1.0915718   -1.4619176   -0.7212259
6 months    ki1000108-IRC              INDIA        4-5                  NA                -1.3649144   -1.5751864   -1.1546423
6 months    ki1000108-IRC              INDIA        6-7                  NA                -1.2181575   -1.4663308   -0.9699841
6 months    ki1000108-IRC              INDIA        8+                   NA                -1.0952273   -1.4049723   -0.7854823
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -1.4770197   -1.8498649   -1.1041745
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                -1.9016898   -2.0682738   -1.7351059
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                -2.0244924   -2.2567349   -1.7922500
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                -1.9116462   -2.1698657   -1.6534267
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -1.3700538   -1.6099504   -1.1301572
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -1.5526219   -1.6843346   -1.4209092
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -1.2943931   -1.4673912   -1.1213949
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -1.3062130   -1.5513095   -1.0611165
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -1.1768769   -1.3901992   -0.9635545
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -1.0761196   -1.1978957   -0.9543435
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -1.0612238   -1.2799609   -0.8424868
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -1.2955356   -1.5884108   -1.0026604
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -1.3477498   -1.5574103   -1.1380894
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -1.1957032   -1.3153994   -1.0760070
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -1.1341795   -1.3407323   -0.9276267
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                -1.4755743   -1.6578956   -1.2932530
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                -1.6117763   -1.7466010   -1.4769516
6 months    ki1148112-LCNI-5           MALAWI       4-5                  NA                -1.6545722   -1.7591643   -1.5499801
6 months    ki1148112-LCNI-5           MALAWI       6-7                  NA                -1.6520157   -1.7981872   -1.5058442
6 months    ki1148112-LCNI-5           MALAWI       8+                   NA                -1.6156318   -1.8790199   -1.3522438
24 months   ki1000108-IRC              INDIA        3 or less            NA                -1.5382462   -1.8029179   -1.2735745
24 months   ki1000108-IRC              INDIA        4-5                  NA                -1.8979033   -2.0411070   -1.7546996
24 months   ki1000108-IRC              INDIA        6-7                  NA                -1.7249765   -1.9291065   -1.5208465
24 months   ki1000108-IRC              INDIA        8+                   NA                -1.8525023   -2.0477034   -1.6573012
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -2.0978017   -2.3352880   -1.8603154
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -2.3758667   -2.5213721   -2.2303614
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -2.1080252   -2.3278423   -1.8882081
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -2.1321789   -2.3972401   -1.8671176
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -1.6038957   -1.8437722   -1.3640193
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -1.5676951   -1.7037880   -1.4316022
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -1.6467561   -1.9005681   -1.3929442
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -1.8508658   -2.0575389   -1.6441927
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -1.3724286   -1.5723958   -1.1724614
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -1.4400371   -1.5779802   -1.3020940
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -1.4026470   -1.6109245   -1.1943695
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                -1.6006430   -1.7925555   -1.4087305
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                -1.9650450   -2.1167668   -1.8133232
24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                -1.8904999   -2.0173589   -1.7636409
24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                -1.7558243   -1.9249922   -1.5866564
24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                -1.8535729   -2.2228426   -1.4843033


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1017093-NIH-Birth        BANGLADESH   NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.9094945   -0.9809370   -0.8380521
6 months    ki1000108-IRC              INDIA        NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH   NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1148112-LCNI-5           MALAWI       NA                   NA                -1.6426961   -1.7120603   -1.5733318
24 months   ki1000108-IRC              INDIA        NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                -1.8822648   -1.9637218   -1.8008078


### Parameter: ATE


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA        4-5                  3 or less         -0.4865254   -0.9537211   -0.0193297
Birth       ki1000108-IRC              INDIA        6-7                  3 or less         -0.4749778   -0.9831500    0.0331945
Birth       ki1000108-IRC              INDIA        8+                   3 or less         -0.1673457   -0.6660632    0.3313718
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less          0.0038093   -0.2755887    0.2832073
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0402128   -0.2644947    0.3449203
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         -0.0715437   -0.4089415    0.2658541
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less          0.1510679   -0.0441224    0.3462581
Birth       ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less          0.1243132   -0.1146812    0.3633076
Birth       ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less          0.0873742   -0.1704336    0.3451821
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0616834   -0.1295923    0.2529591
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0877662   -0.1632119    0.3387443
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0757274   -0.3165742    0.1651194
6 months    ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA        4-5                  3 or less         -0.2733426   -0.6992510    0.1525659
6 months    ki1000108-IRC              INDIA        6-7                  3 or less         -0.1265857   -0.5722910    0.3191196
6 months    ki1000108-IRC              INDIA        8+                   3 or less         -0.0036555   -0.4863767    0.4790657
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.4246702   -0.8328408   -0.0164995
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.5474727   -0.9863702   -0.1085753
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         -0.4346265   -0.8878491    0.0185961
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.1825681   -0.4551206    0.0899844
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0756608   -0.2181868    0.3695083
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0638408   -0.2778828    0.4055643
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less          0.1007572   -0.1451572    0.3466716
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less          0.1156530   -0.1895720    0.4208780
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.1186587   -0.4808611    0.2435437
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less          0.1520467   -0.0896238    0.3937171
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.2135703   -0.0811794    0.5083200
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.1278244   -0.4059697    0.1503208
6 months    ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.0427959   -0.2120154    0.1264236
6 months    ki1148112-LCNI-5           MALAWI       6-7                  3 or less         -0.0402394   -0.2378667    0.1573880
6 months    ki1148112-LCNI-5           MALAWI       8+                   3 or less         -0.0038555   -0.2976146    0.2899036
24 months   ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA        4-5                  3 or less         -0.3596571   -0.6605675   -0.0587468
24 months   ki1000108-IRC              INDIA        6-7                  3 or less         -0.1867303   -0.5212582    0.1477976
24 months   ki1000108-IRC              INDIA        8+                   3 or less         -0.3142561   -0.6431802    0.0146681
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.2780650   -0.5548605   -0.0012696
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         -0.0102235   -0.3312535    0.3108064
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         -0.0343772   -0.3883953    0.3196409
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less          0.0362006   -0.2392846    0.3116859
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0428604   -0.3918817    0.3061609
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.2469700   -0.5630182    0.0690781
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0676085   -0.3095154    0.1742985
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0302184   -0.3180958    0.2576590
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.2282144   -0.5043820    0.0479532
24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less          0.0745451   -0.1234479    0.2725381
24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less          0.2092207   -0.0179511    0.4363926
24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less          0.1114721   -0.2877422    0.5106863


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        3 or less            NA                -0.3388477   -0.7031212    0.0254259
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0003363   -0.2198932    0.2192207
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.1058324   -0.0433667    0.2550315
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0341610   -0.1170582    0.1853802
6 months    ki1000108-IRC              INDIA        3 or less            NA                -0.1428344   -0.4845333    0.1988645
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.4216645   -0.7829050   -0.0604240
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0373282   -0.2544180    0.1797616
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0851854   -0.1167935    0.2871642
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.1490715   -0.0547678    0.3529109
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0309198   -0.1446220    0.0827824
24 months   ki1000108-IRC              INDIA        3 or less            NA                -0.2605313   -0.5050632   -0.0159994
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.1212562   -0.3372294    0.0947170
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0014736   -0.2236264    0.2265736
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0688360   -0.2613730    0.1237011
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0827802   -0.0492614    0.2148217

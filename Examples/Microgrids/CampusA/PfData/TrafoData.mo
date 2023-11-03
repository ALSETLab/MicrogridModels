within OpenIPSL.Examples.Microgrids.CampusA.PfData;
package TrafoData

  partial record TrafoTemplate

    parameter Real t1_trafo_1 "BI1" annotation (Dialog(enable=false));
    parameter Real t2_trafo_1 "BI1" annotation (Dialog(enable=false));

    parameter Real t1_trafo_2 "BI2" annotation (Dialog(enable=false));
    parameter Real t2_trafo_2 "BI2" annotation (Dialog(enable=false));

    parameter Real t1_trafo_3 "HT1W" annotation (Dialog(enable=false));
    parameter Real t2_trafo_3 "HT1W" annotation (Dialog(enable=false));

    parameter Real t1_trafo_4 "HT2E" annotation (Dialog(enable=false));
    parameter Real t2_trafo_4 "HT2E" annotation (Dialog(enable=false));

    parameter Real t1_trafo_5 "HT3N" annotation (Dialog(enable=false));
    parameter Real t2_trafo_5 "HT3N" annotation (Dialog(enable=false));

    parameter Real t1_trafo_6 "HT4S" annotation (Dialog(enable=false));
    parameter Real t2_trafo_6 "HT4S" annotation (Dialog(enable=false));

  end TrafoTemplate;

  record PfTrafo00000
    extends TrafoTemplate(
      t1_trafo_1=1.0000000,
      t2_trafo_1=1.0000000,
      t1_trafo_2=1.0000000,
      t2_trafo_2=1.0000000,
      t1_trafo_3=1.0000000,
      t2_trafo_3=1.0000000,
      t1_trafo_4=1.0000000,
      t2_trafo_4=1.0000000,
      t1_trafo_5=1.0000000,
      t2_trafo_5=1.0000000,
      t1_trafo_6=1.0000000,
      t2_trafo_6=1.0000000);

    // TRAFO: '['2_AENB_69.0_3_H2E_12.0_2']'
    // From: 'AENB' - To: 'H2E'

    // TRAFO: '['2_AENB_69.0_4_H4S_12.0_3']'
    // From: 'AENB' - To: 'H4S'

    // TRAFO: '['2_AENB_69.0_5_H3N_12.0_4']'
    // From: 'AENB' - To: 'H3N'

    // TRAFO: '['2_AENB_69.0_6_H1W_12.0_5']'
    // From: 'AENB' - To: 'H1W'

    // TRAFO: '['11_W3N_12.0_13_B416_4.16_15']'
    // From: 'W3N' - To: 'B416'

    // TRAFO: '['12_W4S_12.0_13_B416_4.16_16']'
    // From: 'W4S' - To: 'B416'

  end PfTrafo00000;
end TrafoData;

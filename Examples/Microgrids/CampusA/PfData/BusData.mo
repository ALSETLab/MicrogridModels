within OpenIPSL.Examples.Microgrids.CampusA.PfData;
package BusData

  partial record BusTemplate

    parameter OpenIPSL.Types.PerUnit V1 "B01"
      annotation (Dialog(enable=false));
    parameter OpenIPSL.Types.Angle A1 "B01" annotation (Dialog(enable=false));

    parameter OpenIPSL.Types.PerUnit V2 "B02"
      annotation (Dialog(enable=false));
    parameter OpenIPSL.Types.Angle A2 "B02" annotation (Dialog(enable=false));

    parameter OpenIPSL.Types.PerUnit V3 "B03"
      annotation (Dialog(enable=false));
    parameter OpenIPSL.Types.Angle A3 "B03" annotation (Dialog(enable=false));

    parameter OpenIPSL.Types.PerUnit V4 "B04"
      annotation (Dialog(enable=false));
    parameter OpenIPSL.Types.Angle A4 "B04" annotation (Dialog(enable=false));

    parameter OpenIPSL.Types.PerUnit V5 "B05"
      annotation (Dialog(enable=false));
    parameter OpenIPSL.Types.Angle A5 "B05" annotation (Dialog(enable=false));

    parameter OpenIPSL.Types.PerUnit V6 "B06"
      annotation (Dialog(enable=false));
    parameter OpenIPSL.Types.Angle A6 "B06" annotation (Dialog(enable=false));

    parameter OpenIPSL.Types.PerUnit V7 "B07"
      annotation (Dialog(enable=false));
    parameter OpenIPSL.Types.Angle A7 "B07" annotation (Dialog(enable=false));

    parameter OpenIPSL.Types.PerUnit V8 "B08"
      annotation (Dialog(enable=false));
    parameter OpenIPSL.Types.Angle A8 "B08" annotation (Dialog(enable=false));

    parameter OpenIPSL.Types.PerUnit V9 "B09"
      annotation (Dialog(enable=false));
    parameter OpenIPSL.Types.Angle A9 "B09" annotation (Dialog(enable=false));

    parameter OpenIPSL.Types.PerUnit V10 "B10"
      annotation (Dialog(enable=false));
    parameter OpenIPSL.Types.Angle A10 "B10" annotation (Dialog(enable=false));

    parameter OpenIPSL.Types.PerUnit V11 "B11"
      annotation (Dialog(enable=false));
    parameter OpenIPSL.Types.Angle A11 "B11" annotation (Dialog(enable=false));

    parameter OpenIPSL.Types.PerUnit V12 "B12"
      annotation (Dialog(enable=false));
    parameter OpenIPSL.Types.Angle A12 "B12" annotation (Dialog(enable=false));

    parameter OpenIPSL.Types.PerUnit V13 "B13"
      annotation (Dialog(enable=false));
    parameter OpenIPSL.Types.Angle A13 "B13" annotation (Dialog(enable=false));

  end BusTemplate;

  record PfBus00000
    extends BusTemplate(
      V1=1,
      A1=0,
      V2=1.0000683870691,
      A2=0.000110262409124091,
      V3=0.999994767002915,
      A3=-0.00763493105759082,
      V4=0.999995290017817,
      A4=0.0140136353089708,
      V5=0.999995141249226,
      A5=0.00643593252388546,
      V6=0.999988134052338,
      A6=-0.0076571649969286,
      V7=1,
      A7=-0.00763072557882589,
      V8=0.999993335581861,
      A8=-0.00765146817597855,
      V9=1,
      A9=0.0140321250177743,
      V10=1,
      A10=0.00644844296295463,
      V11=0.999997626531425,
      A11=-0.0330000223965059,
      V12=1,
      A12=-0.0329890262670254,
      V13=0.990624532179813,
      A13=-0.0795059298487369);

    // Bus: 'AENA' (slack bus)

    // Bus: 'AENB' (PQ bus)

    // Bus: 'H2E' (PQ bus)

    // Bus: 'H4S' (PQ bus)

    // Bus: 'H3N' (PQ bus)

    // Bus: 'H1W' (PQ bus)

    // Bus: 'A1W' (PV bus)

    // Bus: 'A2E' (PQ bus)

    // Bus: 'W1W' (PV bus)

    // Bus: 'W2E' (PV bus)

    // Bus: 'W3N' (PQ bus)

    // Bus: 'W4S' (PV bus)

    // Bus: 'B416' (PQ bus)

  end PfBus00000;
end BusData;

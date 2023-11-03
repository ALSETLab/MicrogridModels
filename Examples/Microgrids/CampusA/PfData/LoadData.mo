within OpenIPSL.Examples.Microgrids.CampusA.PfData;
package LoadData

  partial record LoadTemplate

    parameter OpenIPSL.Types.ActivePower PL1 "Load01"
      annotation (Dialog(enable=false));
    parameter OpenIPSL.Types.ReactivePower QL1 "Load01"
      annotation (Dialog(enable=false));

    parameter OpenIPSL.Types.ActivePower PL2 "Load02"
      annotation (Dialog(enable=false));
    parameter OpenIPSL.Types.ReactivePower QL2 "Load02"
      annotation (Dialog(enable=false));

    parameter OpenIPSL.Types.ActivePower PL3 "Load03"
      annotation (Dialog(enable=false));
    parameter OpenIPSL.Types.ReactivePower QL3 "Load03"
      annotation (Dialog(enable=false));

    parameter OpenIPSL.Types.ActivePower PL4 "Load04"
      annotation (Dialog(enable=false));
    parameter OpenIPSL.Types.ReactivePower QL4 "Load04"
      annotation (Dialog(enable=false));

    parameter OpenIPSL.Types.ActivePower PL5 "Load05"
      annotation (Dialog(enable=false));
    parameter OpenIPSL.Types.ReactivePower QL5 "Load05"
      annotation (Dialog(enable=false));

    parameter OpenIPSL.Types.ActivePower PL6 "Load06"
      annotation (Dialog(enable=false));
    parameter OpenIPSL.Types.ReactivePower QL6 "Load06"
      annotation (Dialog(enable=false));

    parameter OpenIPSL.Types.ActivePower PL7 "Load07"
      annotation (Dialog(enable=false));
    parameter OpenIPSL.Types.ReactivePower QL7 "Load07"
      annotation (Dialog(enable=false));

    parameter OpenIPSL.Types.ActivePower PL8 "Load08"
      annotation (Dialog(enable=false));
    parameter OpenIPSL.Types.ReactivePower QL8 "Load08"
      annotation (Dialog(enable=false));

    parameter OpenIPSL.Types.ActivePower PL9 "Load09"
      annotation (Dialog(enable=false));
    parameter OpenIPSL.Types.ReactivePower QL9 "Load09"
      annotation (Dialog(enable=false));

    parameter OpenIPSL.Types.ActivePower PL10 "Load10"
      annotation (Dialog(enable=false));
    parameter OpenIPSL.Types.ReactivePower QL10 "Load10"
      annotation (Dialog(enable=false));

    parameter OpenIPSL.Types.ActivePower PL11 "Load11"
      annotation (Dialog(enable=false));
    parameter OpenIPSL.Types.ReactivePower QL11 "Load11"
      annotation (Dialog(enable=false));

  end LoadTemplate;

  record PfLoad00000
    extends LoadTemplate(
      PL1=1e06*(10.0000000),
      QL1=1e06*(5.0000000),
      PL2=1e06*(10.0000000),
      QL2=1e06*(5.0000000),
      PL3=1e06*(10.0000000),
      QL3=1e06*(5.0000000),
      PL4=1e06*(10.0000000),
      QL4=1e06*(5.0000000),
      PL5=1e06*(10.0000000),
      QL5=1e06*(5.0000000),
      PL6=1e06*(10.0000000),
      QL6=1e06*(5.0000000),
      PL7=1e06*(10.0000000),
      QL7=1e06*(5.0000000),
      PL8=1e06*(10.0000000),
      QL8=1e06*(5.0000000),
      PL9=1e06*(10.0000000),
      QL9=1e06*(5.0000000),
      PL10=1e06*(10.0000000),
      QL10=1e06*(5.0000000),
      PL11=1e06*(12.0000000),
      QL11=1e06*(3.0000000));

    // Load: '3_1'

    // Load: '4_2'

    // Load: '5_3'

    // Load: '6_4'

    // Load: '7_5'

    // Load: '8_6'

    // Load: '9_7'

    // Load: '10_8'

    // Load: '11_9'

    // Load: '12_10'

    // Load: '13_11'

  end PfLoad00000;
end LoadData;

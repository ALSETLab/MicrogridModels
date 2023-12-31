within OpenIPSL.Examples.Microgrids.CampusA.PfData;
package MachineData

  partial record MachineTemplate

    parameter OpenIPSL.Types.ActivePower PG1 "Gen01"
      annotation (Dialog(enable=false));
    parameter OpenIPSL.Types.ReactivePower QG1 "Gen01"
      annotation (Dialog(enable=false));

    parameter OpenIPSL.Types.ActivePower PG2 "Gen02"
      annotation (Dialog(enable=false));
    parameter OpenIPSL.Types.ReactivePower QG2 "Gen02"
      annotation (Dialog(enable=false));

    parameter OpenIPSL.Types.ActivePower PG3 "Gen03"
      annotation (Dialog(enable=false));
    parameter OpenIPSL.Types.ReactivePower QG3 "Gen03"
      annotation (Dialog(enable=false));

    parameter OpenIPSL.Types.ActivePower PG4 "Gen04"
      annotation (Dialog(enable=false));
    parameter OpenIPSL.Types.ReactivePower QG4 "Gen04"
      annotation (Dialog(enable=false));

    parameter OpenIPSL.Types.ActivePower PG5 "Gen05"
      annotation (Dialog(enable=false));
    parameter OpenIPSL.Types.ReactivePower QG5 "Gen05"
      annotation (Dialog(enable=false));

  end MachineTemplate;

  record PfMachine00000
    extends MachineTemplate(
      PG1=1e06*(-0.8932547),
      QG1=1e06*(0.2094448),
      PG2=1e06*(40.0000000),
      QG2=1e06*(16.9621993),
      PG3=1e06*(30.0000000),
      QG3=1e06*(9.7158803),
      PG4=1e06*(21.0000000),
      QG4=1e06*(9.8645562),
      PG5=1e06*(22.0000000),
      QG5=1e06*(7.7486828));

    // MACHINE: '1_1'
    // Bus: AENA'

    // MACHINE: '7_2'
    // Bus: A1W'

    // MACHINE: '9_3'
    // Bus: W1W'

    // MACHINE: '10_4'
    // Bus: W2E'

    // MACHINE: '12_5'
    // Bus: W4S'

  end PfMachine00000;
end MachineData;

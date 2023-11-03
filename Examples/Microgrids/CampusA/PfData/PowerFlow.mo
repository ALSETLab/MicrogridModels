within OpenIPSL.Examples.Microgrids.CampusA.PfData;
record PowerFlow
  extends Modelica.Icons.Record;

  replaceable record PowerFlow =
      PowerFlowTemplate constrainedby PowerFlowTemplate
    annotation (choicesAllMatching);

  PowerFlow powerflow;

end PowerFlow;

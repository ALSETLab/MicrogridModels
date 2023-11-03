within OpenIPSL.Electrical.Controls.PSSE.ES.BaseClasses;
block FEX_block
  "Block for Rectifier Regulation Characteristic FEX=f(IN)"
  import OpenIPSL.Electrical.Controls.PSSE.ES.BaseClasses.Fex;
  input Modelica.Blocks.Interfaces.RealInput u annotation (Placement(transformation(
          extent={{-70,-10},{-50,10}}), iconTransformation(extent={{-110,-10},{
            -90,10}})));
  output Modelica.Blocks.Interfaces.RealOutput y annotation (Placement(transformation(
          extent={{58,-10},{78,10}}), iconTransformation(extent={{100,-10},{120,
            10}})));
equation
  y = Fex(u);
  annotation (
    Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,
            100}}), graphics={Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),Text(
          extent={{-62,28},{64,-30}},
          lineColor={0,0,255},
          textString="FEX=f(IN)")}),
    experiment(
      __Dymola_NumberOfIntervals=5000,
      Tolerance=1e-06,
      __Dymola_Algorithm="Dassl"));
end FEX_block;

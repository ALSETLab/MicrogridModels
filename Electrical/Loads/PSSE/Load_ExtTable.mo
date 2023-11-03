within OpenIPSL.Electrical.Loads.PSSE;
model Load_ExtTable "PSS/E Load"
  extends BaseClasses.baseLoad;
  Load_ExtInput load(
    S_b=S_b,
    P_0=P_0,
    Q_0=Q_0,
    v_0=v_0,
    angle_0=angle_0,
    PQBRAK=PQBRAK,
    characteristic=characteristic,
    d_P=d_P,
    t1=t1,
    d_t=d_t) annotation (Placement(transformation(extent={{-40,-14},{40,60}})));
  Modelica.Blocks.Sources.TimeTable timeTableP(table=tableP)
    annotation (Placement(transformation(extent={{-94,22},{-74,42}})));
  parameter Types.PerUnit d_P "Active Load Variation";
  parameter Types.Time t1 "Time of Load Variation";
  parameter Types.Time d_t "Time duration of load variation";
  parameter Types.ActivePower tableP[:, :]=fill(
        0,
        0,
        2) "Table for P(t)";
  parameter Types.ActivePower tableQ[:, :]=fill(
        0,
        0,
        2) "Table for Q(t)";
  Modelica.Blocks.Sources.TimeTable timeTableQ(table=tableQ)
    annotation (Placement(transformation(extent={{-94,-14},{-74,6}})));
equation
  kI*S_I.re*v + S_Y.re*v^2 + kP*S_P.re = p.vr*p.ir + p.vi*p.ii;
  kI*S_I.im*v + S_Y.im*v^2 + kP*S_P.im = (-p.vr*p.ii) + p.vi*p.ir;
  connect(load.p, p)
    annotation (Line(points={{0,60},{0,100}}, color={0,0,255}));
  connect(timeTableP.y, load.uP) annotation (Line(points={{-73,32},{-56,32},{
          -56,43.35},{-32.4,43.35}}, color={0,0,127}));
  connect(timeTableQ.y, load.uQ) annotation (Line(points={{-73,-4},{-42,-4},{
          -42,11.53},{-14,11.53}}, color={0,0,127}));
  annotation (Documentation(revisions="<html>
<table cellspacing=\"1\" cellpadding=\"1\" border=\"1\">
<tr>
<td><p>Reference</p></td>
<td>PSS&reg;E Manual</td>
</tr>
<tr>
<td><p>Last update</p></td>
<td> </td>
</tr>
<tr>
<td><p>Author</p></td>
<td><p>Mengjia Zhang, KTH Royal Institute of Technology</p></td>
</tr>
<tr>
<td><p>Contact</p></td>
<td><p>see <a href=\"modelica://OpenIPSL.UsersGuide.Contact\">UsersGuide.Contact</a></p></td>
</tr>
</table>
</html>"), Icon(graphics={
        Rectangle(
          extent={{-52,30},{-26,16}},
          lineColor={28,108,200},
          fillColor={170,213,255},
          fillPattern=FillPattern.Solid,
          lineThickness=0.5),
        Rectangle(
          extent={{-26,30},{0,16}},
          lineColor={28,108,200},
          fillColor={170,213,255},
          fillPattern=FillPattern.Solid,
          lineThickness=0.5),
        Rectangle(
          extent={{26,30},{52,16}},
          lineColor={28,108,200},
          fillColor={170,213,255},
          fillPattern=FillPattern.Solid,
          lineThickness=0.5),
        Rectangle(
          extent={{0,30},{26,16}},
          lineColor={28,108,200},
          fillColor={170,213,255},
          fillPattern=FillPattern.Solid,
          lineThickness=0.5),
        Rectangle(
          extent={{-52,16},{-26,2}},
          lineColor={28,108,200},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-26,16},{0,2}},
          lineColor={28,108,200},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{26,16},{52,2}},
          lineColor={28,108,200},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{0,16},{26,2}},
          lineColor={28,108,200},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-52,2},{-26,-12}},
          lineColor={28,108,200},
          fillColor={215,215,215},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-26,2},{0,-12}},
          lineColor={28,108,200},
          fillColor={215,215,215},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{26,2},{52,-12}},
          lineColor={28,108,200},
          fillColor={215,215,215},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{0,2},{26,-12}},
          lineColor={28,108,200},
          fillColor={215,215,215},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-52,-12},{-26,-26}},
          lineColor={28,108,200},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-26,-12},{0,-26}},
          lineColor={28,108,200},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{26,-12},{52,-26}},
          lineColor={28,108,200},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{0,-12},{26,-26}},
          lineColor={28,108,200},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid)}));
end Load_ExtTable;

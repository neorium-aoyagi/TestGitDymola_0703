within ;
package UserLibrary_Renamed
  model test1_1
    Modelica.Mechanics.Translational.Components.Fixed fixed
      annotation (Placement(transformation(extent={{-70,-10},{-50,10}})));
    Modelica.Mechanics.Translational.Components.Mass mass(m=1, s(fixed=true,
          start=1))
      annotation (Placement(transformation(extent={{44,44},{64,64}})));
    Modelica.Mechanics.Translational.Components.SpringDamper springDamper(
      c=100,
      d=1,
      s_rel0=0.5)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  equation
    connect(fixed.flange, springDamper.flange_a)
      annotation (Line(points={{-60,0},{-10,0}}, color={0,127,0}));
    connect(springDamper.flange_b, mass.flange_a)
      annotation (Line(points={{10,0},{38,0},{38,54},{44,54}},
                                               color={0,127,0}));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
          coordinateSystem(preserveAspectRatio=false)));
  end test1_1;
  annotation (uses(Modelica(version="4.1.0")));
end UserLibrary_Renamed;

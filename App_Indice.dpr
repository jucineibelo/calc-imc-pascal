program App_Indice;

uses
  Vcl.Forms,
  uFRMPrincipal in 'uFRMPrincipal.pas' {frmPrincipal},
  uFRMRequisitos in 'uFRMRequisitos.pas' {frmRequisitos},
  uFrmResultadoo in 'uFrmResultadoo.pas' {frmResultado},
  uDadosPessoa in 'uDadosPessoa.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Metropolis UI Dark');
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmRequisitos, frmRequisitos);
  Application.CreateForm(TfrmResultado, frmResultado);
  Application.Run;
end.

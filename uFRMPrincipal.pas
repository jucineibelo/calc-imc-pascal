unit uFRMPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  uFRMRequisitos, uFrmResultadoo, uDadosPessoa;

type
  TfrmPrincipal = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    edtAltura: TEdit;
    edtPeso: TEdit;
    cmbSexo: TComboBox;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  try
  P_Dados_Pessoa.Altura := StrToFloat(edtAltura.Text);
  P_Dados_Pessoa.Peso := StrToFloat(edtPeso.Text);
  P_Dados_Pessoa.Sexo := cmbSexo.Text;
  P_Dados_Pessoa.IMC := CalcularIMC (P_Dados_Pessoa.Peso,
                                     P_Dados_Pessoa.Altura, 
                                     P_Dados_Pessoa.Sexo);
  frmResultado.ShowModal;
  Except  
  ShowMessage('Dados Inválidos!');

  end;
end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
begin
  frmRequisitos.ShowModal;
end;

end.

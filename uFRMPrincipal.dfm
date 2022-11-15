object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Calculo de indice corporal'
  ClientHeight = 282
  ClientWidth = 588
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 136
    Top = 95
    Width = 92
    Height = 19
    Caption = 'Sua Altura:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 136
    Top = 135
    Width = 80
    Height = 19
    Caption = 'Seu Peso:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 136
    Top = 170
    Width = 81
    Height = 19
    Caption = 'Sua Sexo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 136
    Top = 224
    Width = 113
    Height = 33
    Caption = 'Resultado'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 296
    Top = 224
    Width = 113
    Height = 33
    Caption = 'Ver Requisitos'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 588
    Height = 73
    Align = alTop
    Caption = 'Calculadora - '#205'ndice de Massa Corporal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object edtAltura: TEdit
    Left = 264
    Top = 95
    Width = 121
    Height = 21
    TabOrder = 3
    TextHint = 'Digite sua altura'
  end
  object edtPeso: TEdit
    Left = 264
    Top = 137
    Width = 121
    Height = 21
    TabOrder = 4
    TextHint = 'Digite seu peso'
  end
  object cmbSexo: TComboBox
    Left = 264
    Top = 172
    Width = 121
    Height = 21
    Style = csDropDownList
    TabOrder = 5
    Items.Strings = (
      'F'
      'M')
  end
end

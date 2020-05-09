object Fcadastro: TFcadastro
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro'
  ClientHeight = 339
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 300
    Width = 632
    Height = 39
    Align = alBottom
    TabOrder = 2
    object btnSair: TButton
      Left = 534
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 0
      OnClick = btnSairClick
    end
  end
  object Panel4: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 626
    Height = 255
    Align = alClient
    BevelKind = bkSoft
    BorderWidth = 2
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label3: TLabel
      Left = 114
      Top = 67
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label4: TLabel
      Left = 107
      Top = 120
      Width = 43
      Height = 13
      Caption = 'Unidade:'
    end
    object Label5: TLabel
      Left = 101
      Top = 94
      Width = 50
      Height = 13
      Caption = 'Descri'#231#227'o:'
    end
    object Label6: TLabel
      Left = 400
      Top = 148
      Width = 28
      Height = 13
      Caption = 'Valor:'
    end
    object Label7: TLabel
      Left = 286
      Top = 120
      Width = 73
      Height = 13
      Caption = 'Departamento:'
    end
    object Label9: TLabel
      Left = 108
      Top = 148
      Width = 43
      Height = 13
      Caption = 'Estoque:'
    end
    object txtCodPro: TEdit
      Left = 154
      Top = 64
      Width = 55
      Height = 21
      Enabled = False
      TabOrder = 0
    end
    object txtDescPro: TEdit
      Left = 154
      Top = 91
      Width = 340
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object txtValor: TEdit
      Left = 434
      Top = 145
      Width = 60
      Height = 21
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Text = '00,00'
      OnKeyPress = FormKeyPress
    end
    object CmbUN: TComboBox
      Left = 154
      Top = 117
      Width = 47
      Height = 21
      TabOrder = 2
      OnKeyPress = FormKeyPress
      Items.Strings = (
        'UN'
        'KG'
        'ML'
        'CX'
        'PC')
    end
    object CmbDepartamento: TComboBox
      Left = 365
      Top = 118
      Width = 129
      Height = 21
      TabOrder = 3
      OnKeyPress = FormKeyPress
      Items.Strings = (
        'ALIMENTOS'
        'HIGIENE'
        'FRIOS')
    end
    object txtEstoque: TEdit
      Left = 154
      Top = 144
      Width = 47
      Height = 21
      Alignment = taRightJustify
      NumbersOnly = True
      TabOrder = 4
      OnKeyPress = FormKeyPress
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 261
    Width = 632
    Height = 39
    Align = alBottom
    BorderWidth = 2
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 1
    object btnCancelPro: TButton
      Tag = 4
      Left = 425
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 4
      OnClick = btnCancelProClick
    end
    object btnDelPro: TButton
      Tag = 3
      Left = 344
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 3
      OnClick = btnDelProClick
    end
    object btnAltPro: TButton
      Tag = 2
      Left = 261
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 2
      OnClick = btnAltProClick
    end
    object btnNewPro: TButton
      Left = 97
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btnNewProClick
    end
    object btnInserir: TButton
      Tag = 1
      Left = 178
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Inserir'
      TabOrder = 1
      OnClick = btnInserirClick
    end
  end
end

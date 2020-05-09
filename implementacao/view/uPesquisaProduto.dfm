object FPesquisaProduto: TFPesquisaProduto
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Pesquisa Produto'
  ClientHeight = 260
  ClientWidth = 503
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    503
    260)
  PixelsPerInch = 98
  TextHeight = 13
  object cGrid: TVirtualStringTree
    Left = 8
    Top = 40
    Width = 485
    Height = 212
    Alignment = taCenter
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Header.AutoSizeIndex = 0
    Header.Background = clSilver
    Header.Font.Charset = DEFAULT_CHARSET
    Header.Font.Color = clWindowText
    Header.Font.Height = -11
    Header.Font.Name = 'Tahoma'
    Header.Font.Style = [fsBold]
    Header.Options = [hoColumnResize, hoDrag, hoShowSortGlyphs, hoVisible]
    ParentFont = False
    TabOrder = 3
    TreeOptions.SelectionOptions = [toFullRowSelect]
    OnDblClick = btnSelecionarClick
    OnGetText = cGridGetText
    Columns = <
      item
        Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coVisible, coAllowFocus, coUseCaptionAlignment]
        Position = 0
        Width = 250
        WideText = 'Produto'
      end
      item
        Alignment = taRightJustify
        CaptionAlignment = taCenter
        Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coVisible, coAllowFocus, coUseCaptionAlignment]
        Position = 1
        Width = 80
        WideText = 'Valor'
      end>
  end
  object txtcodProduto: TEdit
    Left = 9
    Top = 13
    Width = 297
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnChange = txtcodProdutoChange
  end
  object btnPesquisaProduto: TButton
    Left = 308
    Top = 13
    Width = 64
    Height = 21
    Caption = 'Pesquisa'
    TabOrder = 1
    OnClick = btnPesquisaProdutoClick
  end
  object btnSelecionar: TButton
    Left = 429
    Top = 13
    Width = 64
    Height = 21
    Caption = 'Selecionar'
    TabOrder = 2
    OnClick = btnSelecionarClick
  end
  object tmrConsulta: TTimer
    Interval = 100
    OnTimer = tmrConsultaTimer
    Left = 104
    Top = 56
  end
end
